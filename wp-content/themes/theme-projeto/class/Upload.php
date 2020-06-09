<?php 
class Upload{
    public function gerarNomeUnico($tipo){
        date_default_timezone_set('America/Curitiba');
        $agora = getdate();
        $codigo_data = $agora['year']."-".$agora['yday'];
        $codigo_data .=$agora['hours'].$agora['minutes'].$agora['seconds'];

        return $tipo."_".$codigo_data;
    }

    public function getExtensao($nome){
        return strrchr($nome, '.');
    }

    public function upFoto($arquivo, $tipo){
        $upload = new Upload();
        $diretorio = "uploads";
        $tempFile = $arquivo['tmp_name'];
        $file = basename($arquivo['name']);
        $newFileName = $upload->gerarNomeUnico($tipo).$upload->getExtensao($file);
        $path = $diretorio."/".$newFileName;
        move_uploaded_file($tempFile, $path);
        return $path;
    }
}