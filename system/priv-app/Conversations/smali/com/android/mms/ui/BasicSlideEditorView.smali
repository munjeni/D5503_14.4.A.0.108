.class public Lcom/android/mms/ui/BasicSlideEditorView;
.super Landroid/widget/LinearLayout;
.source "BasicSlideEditorView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;,
        Lcom/android/mms/ui/BasicSlideEditorView$OnSlideViewChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BasicSlideEditorView"


# instance fields
.field private mAudioNameView:Landroid/widget/TextView;

.field private mAudioView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field private mImageView:Landroid/widget/ImageView;

.field private mOnSlideViewChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnSlideViewChangedListener;

.field private mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

.field private mOnTextChangedListenerEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BasicSlideEditorView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/BasicSlideEditorView;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BasicSlideEditorView;)Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/BasicSlideEditorView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    return-object v0
.end method

.method private notifySlideViewChanged()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnSlideViewChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnSlideViewChangedListener;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnSlideViewChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnSlideViewChangedListener;

    invoke-interface {v0}, Lcom/android/mms/ui/BasicSlideEditorView$OnSlideViewChangedListener;->onSlideViewChanged()V

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 76
    const v0, 0x7f0a004f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioView:Landroid/view/View;

    .line 78
    const v0, 0x7f0a005a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioNameView:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/BasicSlideEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BasicSlideEditorView$1;-><init>(Lcom/android/mms/ui/BasicSlideEditorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public pauseImageAnimation()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 195
    invoke-direct {p0}, Lcom/android/mms/ui/BasicSlideEditorView;->notifySlideViewChanged()V

    .line 196
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 223
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 228
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    .line 134
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-direct {p0}, Lcom/android/mms/ui/BasicSlideEditorView;->notifySlideViewChanged()V

    .line 137
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/net/Uri;
    .param p3, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 101
    if-nez p3, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    iget-object v1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/BasicSlideEditorView;->notifySlideViewChanged()V

    .line 111
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "BasicSlideEditorView"

    const-string v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .param p1, "fit"    # Ljava/lang/String;

    .prologue
    .line 141
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 145
    return-void
.end method

.method public setOnSlideViewChangedListener(Lcom/android/mms/ui/BasicSlideEditorView$OnSlideViewChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/mms/ui/BasicSlideEditorView$OnSlideViewChangedListener;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnSlideViewChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnSlideViewChangedListener;

    .line 232
    return-void
.end method

.method public setOnTextChangedListener(Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    .line 204
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 149
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 153
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 154
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 158
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "video"    # Landroid/net/Uri;

    .prologue
    .line 162
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/mms/ui/VideoAttachmentView;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    iget-object v2, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    iget-object v2, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/BasicSlideEditorView;->notifySlideViewChanged()V

    .line 174
    return-void

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "BasicSlideEditorView"

    const-string v3, "setVideo: out of memory: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 178
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 200
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public startImageAnimation()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public stopImageAnimation()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method
