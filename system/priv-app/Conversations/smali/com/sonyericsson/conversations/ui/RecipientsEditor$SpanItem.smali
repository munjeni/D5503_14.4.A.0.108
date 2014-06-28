.class public Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpanItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mName:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem$1;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 144
    instance-of v2, p1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 145
    check-cast v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 146
    .local v0, "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    const/4 v1, 0x0

    .line 148
    .local v1, "ret":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 153
    .end local v0    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .end local v1    # "ret":Z
    :cond_0
    :goto_0
    return v1

    .line 149
    .restart local v0    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .restart local v1    # "ret":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 153
    .end local v0    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .end local v1    # "ret":Z
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    return-void
.end method
