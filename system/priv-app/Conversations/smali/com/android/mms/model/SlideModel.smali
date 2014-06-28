.class public Lcom/android/mms/model/SlideModel;
.super Lcom/android/mms/model/Model;
.source "SlideModel.java"

# interfaces
.implements Ljava/util/List;
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/MediaModel;",
        ">;",
        "Lorg/w3c/dom/events/EventListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SLIDE_DURATION:I = 0x1388

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "SlideModel"


# instance fields
.field private mAttachment:Lcom/android/mms/model/MediaModel;

.field private mAudio:Lcom/android/mms/model/MediaModel;

.field private mCanAddAttachment:Z

.field private mCanAddAudio:Z

.field private mCanAddImage:Z

.field private mCanAddVideo:Z

.field private mDuration:I

.field private mFill:S

.field private mImage:Lcom/android/mms/model/MediaModel;

.field private final mMedia:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Lcom/android/mms/model/SlideshowModel;

.field private mSlideSize:I

.field private mText:Lcom/android/mms/model/MediaModel;

.field private mVideo:Lcom/android/mms/model/MediaModel;

.field private mVisible:Z


# direct methods
.method public constructor <init>(ILcom/android/mms/model/SlideshowModel;)V
    .locals 2
    .param p1, "duration"    # I
    .param p2, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    const/4 v1, 0x1

    .line 75
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    .line 60
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddAttachment:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 76
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 77
    iput-object p2, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    .line 78
    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v5, 0x1

    .line 90
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    .line 60
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 61
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 62
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 63
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddAttachment:Z

    .line 66
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 91
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "maxDur":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 95
    .local v2, "media":Lcom/android/mms/model/MediaModel;
    invoke-direct {p0, v2}, Lcom/android/mms/model/SlideModel;->internalAdd(Lcom/android/mms/model/MediaModel;)V

    .line 97
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v3

    .line 98
    .local v3, "mediaDur":I
    if-le v3, v1, :cond_0

    .line 99
    move v1, v3

    goto :goto_0

    .line 103
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    .end local v3    # "mediaDur":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/model/SlideshowModel;)V
    .locals 1
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 72
    const/16 v0, 0x1388

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;-><init>(ILcom/android/mms/model/SlideshowModel;)V

    .line 73
    return-void
.end method

.method private internalAdd(Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .param p1, "media"    # Lcom/android/mms/model/MediaModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 107
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 114
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 118
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .line 119
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_0

    .line 121
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 123
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    if-eqz v0, :cond_5

    .line 125
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 126
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .line 127
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_0

    .line 129
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 131
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 132
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    if-eqz v0, :cond_7

    .line 133
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 134
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .line 135
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    goto :goto_0

    .line 138
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 140
    :cond_8
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isAttachment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddAttachment:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAttachment:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 143
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mAttachment:Lcom/android/mms/model/MediaModel;

    .line 144
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddAttachment:Z

    goto :goto_0
.end method

.method private internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V
    .locals 6
    .param p1, "old"    # Lcom/android/mms/model/MediaModel;
    .param p2, "media"    # Lcom/android/mms/model/MediaModel;

    .prologue
    .line 150
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 152
    .local v0, "addSize":I
    if-nez p1, :cond_1

    .line 153
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    .line 154
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 156
    :cond_0
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->increaseSlideSize(I)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->increaseMessageSize(I)V

    .line 175
    :goto_0
    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 176
    .local v2, "observer":Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_1

    .line 160
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "observer":Lcom/android/mms/model/IModelChangedObserver;
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v3

    .line 161
    .local v3, "removeSize":I
    if-le v0, v3, :cond_3

    .line 162
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_2

    .line 163
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    sub-int v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 165
    :cond_2
    sub-int v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->increaseSlideSize(I)V

    .line 166
    sub-int v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->increaseMessageSize(I)V

    .line 171
    :goto_2
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p1}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 168
    :cond_3
    sub-int v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 169
    sub-int v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    goto :goto_2

    .line 178
    .end local v3    # "removeSize":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private internalRemove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/16 v4, 0x1388

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 181
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 182
    instance-of v1, p1, Lcom/android/mms/model/TextModel;

    if-eqz v1, :cond_1

    .line 183
    iput-object v3, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    :cond_0
    :goto_0
    move-object v1, p1

    .line 200
    check-cast v1, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 201
    .local v0, "decreaseSize":I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    .line 204
    check-cast p1, Lcom/android/mms/model/Model;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    move v1, v2

    .line 209
    .end local v0    # "decreaseSize":I
    :goto_1
    return v1

    .line 184
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/android/mms/model/ImageModel;

    if-eqz v1, :cond_2

    .line 185
    iput-object v3, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .line 186
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_0

    .line 187
    :cond_2
    instance-of v1, p1, Lcom/android/mms/model/AudioModel;

    if-eqz v1, :cond_3

    .line 188
    iput-object v3, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .line 189
    iput v4, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 190
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_0

    .line 191
    :cond_3
    instance-of v1, p1, Lcom/android/mms/model/VideoModel;

    if-eqz v1, :cond_4

    .line 192
    iput-object v3, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .line 193
    iput v4, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 194
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 195
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    goto :goto_0

    .line 196
    :cond_4
    instance-of v1, p1, Lcom/sonyericsson/conversations/model/AttachmentModel;

    if-eqz v1, :cond_0

    .line 197
    iput-object v3, p0, Lcom/android/mms/model/SlideModel;->mAttachment:Lcom/android/mms/model/MediaModel;

    .line 198
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mCanAddAttachment:Z

    goto :goto_0

    .line 209
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public add(ILcom/android/mms/model/MediaModel;)V
    .locals 2
    .param p1, "location"    # I
    .param p2, "object"    # Lcom/android/mms/model/MediaModel;

    .prologue
    .line 361
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p2, Lcom/android/mms/model/MediaModel;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideModel;->add(ILcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/MediaModel;)Z
    .locals 1
    .param p1, "object"    # Lcom/android/mms/model/MediaModel;

    .prologue
    const/4 v0, 0x1

    .line 281
    invoke-direct {p0, p1}, Lcom/android/mms/model/SlideModel;->internalAdd(Lcom/android/mms/model/MediaModel;)V

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 283
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lcom/android/mms/model/MediaModel;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/MediaModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 366
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/mms/model/MediaModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/MediaModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/mms/model/MediaModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 291
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 292
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 293
    .local v2, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 294
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 295
    .local v0, "decreaseSize":I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    goto :goto_0

    .line 298
    .end local v0    # "decreaseSize":I
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 300
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    .line 301
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .line 302
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .line 303
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .line 304
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mAttachment:Lcom/android/mms/model/MediaModel;

    .line 306
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 307
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 308
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 309
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddAttachment:Z

    .line 311
    invoke-virtual {p0, v4}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 313
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 2
    .param p1, "decreaseSize"    # I

    .prologue
    .line 256
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    .line 258
    .local v0, "size":I
    sub-int/2addr v0, p1

    .line 259
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 261
    .end local v0    # "size":I
    :cond_0
    return-void
.end method

.method public decreaseSlideSize(I)V
    .locals 1
    .param p1, "decreaseSize"    # I

    .prologue
    .line 238
    if-lez p1, :cond_0

    .line 239
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    .line 241
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/mms/model/MediaModel;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAttachment:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/sonyericsson/conversations/model/AttachmentModel;

    return-object v0
.end method

.method public getAudio()Lcom/android/mms/model/AudioModel;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/AudioModel;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    return v0
.end method

.method public getFill()S
    .locals 1

    .prologue
    .line 424
    iget-short v0, p0, Lcom/android/mms/model/SlideModel;->mFill:S

    return v0
.end method

.method public getImage()Lcom/android/mms/model/ImageModel;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/ImageModel;

    return-object v0
.end method

.method public getSlideSize()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    return v0
.end method

.method public getText()Lcom/android/mms/model/TextModel;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/TextModel;

    return-object v0
.end method

.method public getVideo()Lcom/android/mms/model/VideoModel;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/VideoModel;

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 4
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 460
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmilSlideStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 472
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 473
    return-void

    .line 465
    :cond_1
    iget-short v0, p0, Lcom/android/mms/model/SlideModel;->mFill:S

    if-eq v0, v3, :cond_0

    .line 469
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    goto :goto_0
.end method

.method public hasAttachment()Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAttachment:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVideo()Z
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public increaseMessageSize(I)V
    .locals 2
    .param p1, "increaseSize"    # I

    .prologue
    .line 248
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    .line 250
    .local v0, "size":I
    add-int/2addr v0, p1

    .line 251
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 253
    .end local v0    # "size":I
    :cond_0
    return-void
.end method

.method public increaseSlideSize(I)V
    .locals 1
    .param p1, "increaseSize"    # I

    .prologue
    .line 232
    if-lez p1, :cond_0

    .line 233
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    .line 235
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/mms/model/IModelChangedObserver;

    .prologue
    .line 438
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 439
    .local v1, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 441
    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/MediaModel;
    .locals 2
    .param p1, "location"    # I

    .prologue
    .line 390
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 391
    .local v0, "media":Lcom/android/mms/model/MediaModel;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideModel;->internalRemove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 394
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideModel;->remove(I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 332
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/model/SlideModel;->internalRemove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAttachment()Z
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAttachment:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAudio()Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeImage()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeText()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeVideo()Z
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/MediaModel;)Lcom/android/mms/model/MediaModel;
    .locals 2
    .param p1, "location"    # I
    .param p2, "object"    # Lcom/android/mms/model/MediaModel;

    .prologue
    .line 398
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p2, Lcom/android/mms/model/MediaModel;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideModel;->set(ILcom/android/mms/model/MediaModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 225
    return-void
.end method

.method public setFill(S)V
    .locals 1
    .param p1, "fill"    # S

    .prologue
    .line 431
    iput-short p1, p0, Lcom/android/mms/model/SlideModel;->mFill:S

    .line 432
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 433
    return-void
.end method

.method public setParent(Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    .line 245
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 416
    iput-boolean p1, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 417
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 418
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 453
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 454
    .local v1, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 456
    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/mms/model/IModelChangedObserver;

    .prologue
    .line 446
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 447
    .local v1, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 449
    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method public updateDuration(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 536
    if-gtz p1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    const/16 v1, 0x1388

    if-ne v0, v1, :cond_0

    .line 542
    :cond_2
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    goto :goto_0
.end method
