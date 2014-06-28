.class Lcom/android/phone/ManagedRoaming$3;
.super Ljava/lang/Object;
.source "ManagedRoaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ManagedRoaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ManagedRoaming;


# direct methods
.method constructor <init>(Lcom/android/phone/ManagedRoaming;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/phone/ManagedRoaming$3;->this$0:Lcom/android/phone/ManagedRoaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 148
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/phone/ManagedRoaming$3;->this$0:Lcom/android/phone/ManagedRoaming;

    const-string v1, " presed back key, reset local state"

    # invokes: Lcom/android/phone/ManagedRoaming;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/ManagedRoaming;->access$100(Lcom/android/phone/ManagedRoaming;Ljava/lang/String;)V

    .line 150
    # setter for: Lcom/android/phone/ManagedRoaming;->isMRDialogShown:Z
    invoke-static {v2}, Lcom/android/phone/ManagedRoaming;->access$302(Z)Z

    .line 152
    :cond_0
    return v2
.end method
