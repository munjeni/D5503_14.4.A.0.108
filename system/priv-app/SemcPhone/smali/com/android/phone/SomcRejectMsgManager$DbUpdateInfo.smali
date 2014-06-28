.class Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;
.super Ljava/lang/Object;
.source "SomcRejectMsgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcRejectMsgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DbUpdateInfo"
.end annotation


# instance fields
.field final dbFailListener:Lcom/android/phone/SomcRejectMsgManager$DbFailListener;

.field final id:I

.field final message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/android/phone/SomcRejectMsgManager$DbFailListener;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "dbFailListener"    # Lcom/android/phone/SomcRejectMsgManager$DbFailListener;

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;->message:Ljava/lang/String;

    .line 310
    iput p2, p0, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;->id:I

    .line 311
    iput-object p3, p0, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;->dbFailListener:Lcom/android/phone/SomcRejectMsgManager$DbFailListener;

    .line 312
    return-void
.end method
