<?php
namespace AppBundle\Controller;

use AppBundle\Entity\Article;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use FOS\RestBundle\Controller\ControllerTrait;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;
use Symfony\Component\HttpFoundation\Request;
use FOS\RestBundle\Controller\Annotations as Rest;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;



class  ArticleController extends  AbstractController
{

    use ControllerTrait;


    /**
     * @Rest\View()
     */
    public  function  getArticlesAction()
    {

        $articles = $this->getDoctrine()->getRepository('AppBundle:Article')->findAll();

        return $articles;

    }

    /**
     * @Rest\View(statusCode=201)
     * @ParamConverter("article",converter="fos_rest.request_body")
     * @Rest\NoRoute()
     * @param Article $article
     */

    public  function postArticlesAction(Article $article)
    {
       $em = $this->getDoctrine()->getManager();
       //On persiste en BDD
       $em->persist($article);
       $em->flush();
       //On retourne la ressource créée
       return $article;

    }

    /**
     * @Rest\View()
     * @param Article|null $article
     * @return \FOS\RestBundle\View\View
     */
    public function deleteArticleAction(Article $article=null)
    {

        if(null == $article)
        {   //On ne trouve pas l'article à supprimer
            return $this->view(null,404);
        }

        $em = $this->getDoctrine()->getManager();
        $em->remove($article);
        $em->flush();
    }

    /**
     * @Rest\View()
     * @param $slug
     */
    public function getArticleAction($slug)
    {
       // On passe un slug (qui doit etre unique)
        $criteria = array('slug' => $slug);

        $article = $this->getDoctrine()->getRepository('AppBundle:Article')->findOneBy($criteria);

        if(null == $article)
        {   //On ne trouve pas l'article à afficher
            return $this->view(null,404);
        }

        return $article;
    }






}