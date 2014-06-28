.class Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;
.super Ljava/lang/Object;
.source "SendContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SendContactListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendContactItem"
.end annotation


# instance fields
.field private mId:J

.field private mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(JLjava/lang/CharSequence;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-wide p1, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;->mId:J

    .line 99
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;->mLabel:Ljava/lang/CharSequence;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;->mId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
