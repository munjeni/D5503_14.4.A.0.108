.class public interface abstract Lcom/sonyericsson/provider/SemcMediaStore$ExtendedFiles$ExtendedFileColumns;
.super Ljava/lang/Object;
.source "SemcMediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$Files$FileColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/provider/SemcMediaStore$ExtendedFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtendedFileColumns"
.end annotation


# static fields
.field public static final AUDIO_BITRATE:Ljava/lang/String; = "audiobitrate"

.field public static final AUDIO_NUMBER_OF_CHANNELS:Ljava/lang/String; = "audionumchannels"

.field public static final AUDIO_SAMPLE_RATE:Ljava/lang/String; = "audiosamplerate"

.field public static final AUDIO_WAVE_CODEC:Ljava/lang/String; = "audiowavecodec"

.field public static final FILE_LINK_PATH:Ljava/lang/String; = "filelinkpath"

.field public static final SOMC_FILE_HASH:Ljava/lang/String; = "somchash"

.field public static final SOMC_FILE_TYPE:Ljava/lang/String; = "somctype"

.field public static final SOMC_FILE_TYPE_BURST_COVER:I = 0x2

.field public static final SOMC_FILE_TYPE_BURST_IMAGE:I = 0x81

.field public static final SOMC_FILE_TYPE_MPO:I = 0x80

.field public static final SOMC_FILE_TYPE_MPO_COVER:I = 0x1

.field public static final SOMC_FILE_TYPE_NONE:I = 0x0

.field public static final SOMC_FOLDER_CATEGORY:Ljava/lang/String; = "somccategory"

.field public static final TITLE_YOMI:Ljava/lang/String; = "title_yomi"

.field public static final USER_RATING:Ljava/lang/String; = "userrating"

.field public static final VIDEO_BITRATE:Ljava/lang/String; = "videobitrate"

.field public static final VIDEO_ENCODING_PROFILE:Ljava/lang/String; = "videoencodingprofile"

.field public static final VIDEO_FOURCC_CODEC:Ljava/lang/String; = "videofourcccodec"

.field public static final VIDEO_FRAMES_PER_THOUSAND_SECONDS:Ljava/lang/String; = "videoframesperthousandseconds"

.field public static final VIDEO_SCAN_TYPE:Ljava/lang/String; = "videoscantype"
