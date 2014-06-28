.class final Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;
.super Ljava/lang/Object;
.source "SomcRejectMsgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcRejectMsgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RejectMessageInfo"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public recipient:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;->recipient:Ljava/lang/String;

    .line 321
    iput-object p2, p0, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;->content:Ljava/lang/String;

    .line 322
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 326
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 334
    :goto_0
    return v1

    .line 327
    :cond_0
    instance-of v2, p1, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 328
    check-cast v0, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;

    .line 333
    .local v0, "info":Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;
    iget-object v2, p0, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;->recipient:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;->recipient:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 334
    .local v1, "isEqualMessage":Z
    goto :goto_0
.end method
