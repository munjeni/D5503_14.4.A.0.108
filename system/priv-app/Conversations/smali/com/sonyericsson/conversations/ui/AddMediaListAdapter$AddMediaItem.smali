.class Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;
.super Ljava/lang/Object;
.source "AddMediaListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddMediaItem"
.end annotation


# instance fields
.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mId:J

.field private mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(JLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "iconDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-wide p1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->mId:J

    .line 346
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->mLabel:Ljava/lang/CharSequence;

    .line 347
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 348
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->mId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
