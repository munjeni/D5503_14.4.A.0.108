.class public Lcom/android/phone/ItemWithIcon;
.super Ljava/lang/Object;
.source "ItemWithIcon.java"


# instance fields
.field private mActionId:I

.field private mIconResId:I

.field private mMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "iconResId"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/ItemWithIcon;->mActionId:I

    .line 22
    iput-object p1, p0, Lcom/android/phone/ItemWithIcon;->mMsg:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/android/phone/ItemWithIcon;->mIconResId:I

    .line 24
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/ItemWithIcon;->mActionId:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/android/phone/ItemWithIcon;->mIconResId:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/phone/ItemWithIcon;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "actionId"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/phone/ItemWithIcon;->mActionId:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/phone/ItemWithIcon;->getMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
