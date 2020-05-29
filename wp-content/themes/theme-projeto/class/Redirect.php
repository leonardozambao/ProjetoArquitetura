<?php
class Redirect
{
    public function RedirectToTarget($target)
    {
?>
        <script>
            document.addEventListener("DOMContentLoaded", function(event) {
                window.location.href = "<?php echo get_site_url() . '/' . $target; ?>";
            });
        </script>
<?php
    }
}
