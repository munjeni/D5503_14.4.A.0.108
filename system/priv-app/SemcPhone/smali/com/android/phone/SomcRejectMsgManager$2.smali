.class Lcom/android/phone/SomcRejectMsgManager$2;
.super Ljava/lang/Object;
.source "SomcRejectMsgManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcRejectMsgManager;->getRejectMsgsWithDynamicalInfoList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/phone/ContextualRejectMsg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcRejectMsgManager;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcRejectMsgManager;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/phone/SomcRejectMsgManager$2;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/phone/ContextualRejectMsg;Lcom/android/phone/ContextualRejectMsg;)I
    .locals 2
    .param p1, "a"    # Lcom/android/phone/ContextualRejectMsg;
    .param p2, "b"    # Lcom/android/phone/ContextualRejectMsg;

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/android/phone/ContextualRejectMsg;->getProbability()Lcom/android/phone/ContextualRejectMsg$Probability;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/phone/ContextualRejectMsg;->getProbability()Lcom/android/phone/ContextualRejectMsg$Probability;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p1, Lcom/android/phone/ContextualRejectMsg;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/phone/ContextualRejectMsg;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/SomcRejectMsgManager$2;->compare(Lcom/android/phone/ContextualRejectMsg;Lcom/android/phone/ContextualRejectMsg;)I

    move-result v0

    return v0
.end method
