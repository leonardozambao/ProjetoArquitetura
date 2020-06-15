<?php
class Redirect
{
    public function RedirectToTarget($target)
    {
        $urlDestino = get_site_url() . '/' . $target;
        header('Location: ' . $urlDestino);
    }

    public function RedirectToHome()
    {
        $urlDestino = get_site_url();
        header('Location: ' . $urlDestino);
    }
}
