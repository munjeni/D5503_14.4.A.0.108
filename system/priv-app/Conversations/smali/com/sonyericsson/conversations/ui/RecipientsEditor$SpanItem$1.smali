.class final Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem$1;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 176
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;-><init>()V

    .line 177
    .local v0, "span":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    .line 179
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 184
    new-array v0, p1, [Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem$1;->newArray(I)[Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    move-result-object v0

    return-object v0
.end method
