.class Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;
.super Ljava/lang/Object;
.source "SelectLocationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectLocationItem"
.end annotation


# instance fields
.field private mIcon:I

.field private mId:J

.field private mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(JLjava/lang/CharSequence;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # I

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-wide p1, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;->mId:J

    .line 140
    iput-object p3, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;->mLabel:Ljava/lang/CharSequence;

    .line 141
    iput p4, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;->mIcon:I

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;->mId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;

    .prologue
    .line 130
    iget v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;->mIcon:I

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
