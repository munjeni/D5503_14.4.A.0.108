.class Lcom/android/phone/am/SomcAmGreetingsSetting$6;
.super Ljava/lang/Object;
.source "SomcAmGreetingsSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmGreetingsSetting;->getDeleteLastDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmGreetingsSetting;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$6;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 432
    return-void
.end method
