<?php
include 'vfunc.php';
$q=queryencode($_GET['q']);
if(!empty($_GET['q'])){
$title ='Video '.$q.' 3GP, MP4, FLV Free Download';

$description ='Video '.$q.' 3GP, MP4, FLV Free Download Free download video format MP4, format 3gp, flv &amp; webm, streaming of Youtube. full Gratis download video, latest video.';
}else{
$title  = 'josge Video Search Engine';

$description = 'josge Video Search Engine - find videos with HD quality.';
}
include'head.php';
echo '<div class="kotakcari">
    <form action="/search.php">
            <input type="text" name="q" value="'.$q.'" /><input type="submit" value="Search" /><br />
<input name="act" type="radio" value="video" checked="checked">Video
    </form>
    </div>';
if(!empty($_GET['q'])){
echo '<h2 class="r">Search Result for:
<strong>'.$q.'</strong></h2>';
echo '<div class="file"><table class="otable" width="100%"><tbody>';
}
else{
echo'<h2 class="r"> Free download HD videos </h2>';
echo'<div class="file"><table class="otable" width="100%"><tbody>';
}
if($_GET['q']){
$q = $_GET['q'];
} else {
$a = array("vevo");
$b = count($a)-1;
$q = $a[rand(0,$b)];
}
$qu=$q;
$qu=str_replace(" ","+", $qu);
$qu=str_replace("-","+", $qu);
$qu=str_replace("_","+", $qu);
if(strlen($_GET['page']) >1){$yesPage=$_GET['page'];}
else{$yesPage='';}
$grab=ngegrab('https://www.googleapis.com/youtube/v3/search?key=AIzaSyBbshoPpKKEUko4Pnb7vBYUYRtLi0lcwjE&part=snippet&order=relevance&maxResults=10&q='.$qu.'&pageToken='.$yesPage.'&type=video');
$json = json_decode($grab);
$nextpage=$json->nextPageToken;
$prevpage=$json->prevPageToken;
if($json)
{
foreach ($json->items as $sam)
{
$link= $sam->id->videoId;
$name= $sam->snippet->title;
if(!empty($sam->snippet->description)){
$desc = $sam->snippet->description;
}else{
$desc = ''.$name.' - ...';
}
$chtitle = $sam->snippet->channelTitle;
$chid = $sam->snippet->channelId;
$date = dateyt($sam->snippet->publishedAt);
$sam = ngegrab('https://www.googleapis.com/youtube/v3/videos?key=AIzaSyBbshoPpKKEUko4Pnb7vBYUYRtLi0lcwjE&part=contentDetails,statistics&id='.$link.'');
$dt=json_decode($sam);
foreach ($dt->items as $dta){
$time=$dta->contentDetails->duration;
$duration= format_time($time);
$views= $dta->statistics->viewCount;
$like= $dta->statistics->likeCount;
$dislike= $dta->statistics->dislikeCount;   
}

echo '<tr><td width="100px"><a href="/watch?v='.$link.'"><img alt="'.$name.'" title="'.$name.'" src="http://img.youtube.com/vi/'.$link.'/default.jpg" width="100px"></a></td><td><a href="/watch?v='.$link.'"> '.$name.' </a><br><span class="label"> '.$views.' x </span> <span class="labels">'.$duration.'</span><span class="label"> '.$date.' </span></td></tr>';
}
echo '</tbody></table></div>';
echo '<div class="nav" align="center">';
if (strlen($prevpage)>1)
{
if (strlen($_GET['q'])>1)
{
echo '<a href="/video?q='.$_GET['q'].'&page='.$prevpage.'">Previous</a>';
}
else 
{
echo '<a href="/video?q='.$q.'&page='.$prevpage.'">Previous</a>';
}
}
if (strlen($nextpage)>1)
{
if (strlen($_GET['q'])>1)
{
echo '<a href="/video?q='.$_GET['q'].'&page='.$nextpage.'">Next</a>';
}
else
{
echo '<a href="/video?q='.$q.'&page='.$nextpage.'">Next</a>';
}
}
echo '</div>';
}
if(!empty($_GET['q']) AND empty($_GET['page'])){$user_query = ''.$_GET['q'].'
';
write_to_file($user_query);}
include'vlast.php';
include'foot.php';
?>