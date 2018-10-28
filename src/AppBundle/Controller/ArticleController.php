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
    public  function  getArticleAction()
    {

        $articles = $this->getDoctrine()->getRepository('AppBundle:Article')->findAll();

        return $articles;

    }










}