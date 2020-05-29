<?php
class Redirect
{
    public function RedirectToTarget($target)
    {
        $url = get_site_url() . '/' . $target;
        header('Location: ' . $url);
    }

    public function RedirectToHome()
    {
        $url = get_site_url();
        header('Location: ' . $url);
    }
}
