.class Lcom/android/phone/am/SomcAmSetting$1;
.super Ljava/lang/Object;
.source "SomcAmSetting.java"

# interfaces
.implements Lcom/android/phone/am/SomcAmNumberPickerDialog$OnNumberSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmSetting;->showNumberPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmSetting;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/phone/am/SomcAmSetting$1;->this$0:Lcom/android/phone/am/SomcAmSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberSet(I)V
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/phone/am/SomcAmSetting$1;->this$0:Lcom/android/phone/am/SomcAmSetting;

    # invokes: Lcom/android/phone/am/SomcAmSetting;->setAutomaticAnswerTime(I)V
    invoke-static {v0, p1}, Lcom/android/phone/am/SomcAmSetting;->access$000(Lcom/android/phone/am/SomcAmSetting;I)V

    .line 224
    return-void
.end method
