.class public Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
.super Ljava/lang/Object;
.source "ContentsViewController.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;


# static fields
.field public static final MAX_CONTENT_NUMBER:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mClickable:Z

.field private final mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

.field private mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

.field private mOrientation:I

.field private final mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

.field private mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

.field private mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "securityLevel"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    .param p3, "storageManager"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    .line 87
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    .line 88
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    .line 93
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->contents_container:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 94
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/IncrementalId;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    .line 96
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 98
    return-void
.end method

.method private isLoading()Z
    .locals 3

    .prologue
    .line 311
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 312
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 313
    .local v1, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->hasContent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    const/4 v2, 0x1

    .line 320
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :goto_1
    return v2

    .line 311
    .restart local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 291
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 293
    .local v1, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getRequestId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 299
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :goto_1
    return-object v1

    .line 291
    .restart local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addContent(ILandroid/net/Uri;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 192
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->request(ILandroid/net/Uri;)V

    .line 195
    :cond_0
    return-void
.end method

.method public addContentOverlayView(ILandroid/view/View;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 390
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 391
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 396
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 397
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 400
    :cond_1
    return-void
.end method

.method public addContentOverlayView(ILandroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 414
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    :cond_0
    return-void
.end method

.method public clearContents()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->pause()V

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 357
    return-void
.end method

.method public createClearContentFrame()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 148
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 149
    sget-object v3, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->TAG:Ljava/lang/String;

    const-string v4, "Activity has already been released at createClearContentFrame."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return v2

    .line 154
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 155
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-nez v0, :cond_1

    .line 156
    sget-object v3, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->TAG:Ljava/lang/String;

    const-string v4, "could not get inflater."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->getNext()I

    move-result v2

    .line 163
    .local v2, "requestId":I
    sget v3, Lcom/sonyericsson/cameracommon/R$layout;->content_pallet:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 164
    .local v1, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->initialize(I)V

    .line 165
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    if-nez v3, :cond_2

    .line 166
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->disableClick()V

    .line 170
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_3

    .line 171
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 174
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 175
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    iget v4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setSensorOrientation(I)V

    goto :goto_0
.end method

.method public createContentFrame()I
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createClearContentFrame()I

    move-result v0

    .line 134
    .local v0, "requestId":I
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->showProgress(I)V

    .line 136
    return v0
.end method

.method public disableClick()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->disableClick()V

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    .line 464
    return-void
.end method

.method public enableClick()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->enableClick()V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    .line 458
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    return-void
.end method

.method public hideThumbnail()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->hide()V

    .line 235
    :cond_0
    return-void
.end method

.method public onAvailableSizeUpdated(J)V
    .locals 0
    .param p1, "available"    # J

    .prologue
    .line 380
    return-void
.end method

.method public onContentCreated(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "content"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .prologue
    .line 330
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 331
    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->TAG:Ljava/lang/String;

    const-string v2, "Activity has already been released."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 339
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v1

    if-nez v1, :cond_2

    .line 340
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createClearContentFrame()I

    move-result p1

    .line 344
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 345
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->set(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    .line 348
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->onContentCreated()V

    goto :goto_0
.end method

.method public onDestinationToSaveChanged()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public onStorageStateChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->clearContents()V

    .line 367
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    .line 370
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->pause()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->pause()V

    .line 110
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->release()V

    .line 115
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 119
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    .line 121
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    .line 122
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getMountedPaths(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->reload(I[Ljava/lang/String;)V

    .line 207
    :cond_0
    return-void
.end method

.method public removeContentOverlayView(ILandroid/view/View;)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 429
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 431
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :cond_0
    return-void
.end method

.method public removeEarlyThumbnailView()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->getRequestId()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->getThumbnailView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeContentOverlayView(ILandroid/view/View;)V

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    .line 478
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 75
    return-void
.end method

.method public setEarlyThumbnailView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 469
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    .line 470
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setSensorOrientation(I)V

    .line 244
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mOrientation:I

    .line 245
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    return-void
.end method

.method public showProgress(I)V
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 444
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_0

    .line 446
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 452
    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->stopAnimation(Z)V

    .line 255
    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    :cond_0
    return-void
.end method

.method public startInsertAnimation(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 482
    return-void
.end method

.method public startInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 487
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->setRequestId(I)V

    .line 489
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->prepareAnimation()V

    .line 492
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->getThumbnailView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->addContentOverlayView(ILandroid/view/View;)V

    .line 495
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/sonyericsson/cameracommon/R$anim;->early_thumbnail_insert:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 497
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 500
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startAnimation(Landroid/view/animation/Animation;)V

    .line 502
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public stopAnimation(Z)V
    .locals 3
    .param p1, "notify"    # Z

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 271
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 272
    if-nez p1, :cond_0

    .line 273
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 275
    :cond_0
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 277
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 279
    :cond_1
    return-void
.end method

.method public updateSecurityLevel(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;)V
    .locals 1
    .param p1, "securityLevel"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->updateSecurityLevel(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;)V

    .line 102
    return-void
.end method
