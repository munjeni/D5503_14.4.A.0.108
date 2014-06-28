.class public Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;
.super Ljava/lang/Object;
.source "MessageContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageContentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageContentObject"
.end annotation


# instance fields
.field private mCaption:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mModel:Lcom/android/mms/model/MediaModel;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IILcom/android/mms/model/MediaModel;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "captionResId"    # I
    .param p4, "type"    # I
    .param p5, "model"    # Lcom/android/mms/model/MediaModel;

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 285
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->mCaption:Ljava/lang/String;

    .line 286
    iput p4, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->mType:I

    .line 287
    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->mModel:Lcom/android/mms/model/MediaModel;

    .line 288
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILcom/android/mms/model/MediaModel;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "model"    # Lcom/android/mms/model/MediaModel;

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 278
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->mCaption:Ljava/lang/String;

    .line 279
    iput p4, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->mType:I

    .line 280
    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->mModel:Lcom/android/mms/model/MediaModel;

    .line 281
    return-void
.end method


# virtual methods
.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMediaModel()Lcom/android/mms/model/MediaModel;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->mModel:Lcom/android/mms/model/MediaModel;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->mType:I

    return v0
.end method
