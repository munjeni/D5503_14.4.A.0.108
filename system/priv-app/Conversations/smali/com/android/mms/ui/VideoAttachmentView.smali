.class public Lcom/android/mms/ui/VideoAttachmentView;
.super Landroid/widget/LinearLayout;
.source "VideoAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/VideoAttachmentView$1;,
        Lcom/android/mms/ui/VideoAttachmentView$CreateVideoThumbnailTask;
    }
.end annotation


# static fields
.field public static final IMAGE_VIEW_TESTING_TAG:Ljava/lang/String; = "SlideViewImage"

.field private static final TAG:Ljava/lang/String; = "VideoAttachmentView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public static createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 116
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 117
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 122
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 127
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v2

    .line 122
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 123
    :catch_1
    move-exception v2

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v2

    .line 122
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 125
    :goto_1
    throw v2

    .line 123
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public pauseAudio()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public pauseImageAnimation()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 163
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 168
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "audio"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/net/Uri;
    .param p3, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 173
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .param p1, "fit"    # Ljava/lang/String;

    .prologue
    .line 94
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 98
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 102
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 106
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "video"    # Landroid/net/Uri;

    .prologue
    .line 109
    new-instance v0, Lcom/android/mms/ui/VideoAttachmentView$CreateVideoThumbnailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/VideoAttachmentView$CreateVideoThumbnailTask;-><init>(Lcom/android/mms/ui/VideoAttachmentView;Lcom/android/mms/ui/VideoAttachmentView$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 132
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 148
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public startImageAnimation()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public stopImageAnimation()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
