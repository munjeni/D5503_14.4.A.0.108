.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$GpsCheckBoxListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsCheckBoxListener"
.end annotation


# instance fields
.field private mFooterView:Landroid/widget/TextView;

.field private mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mMessage:I


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p2, "footer"    # Landroid/widget/TextView;
    .param p3, "textId"    # I

    .prologue
    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1061
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$GpsCheckBoxListener;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1068
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$GpsCheckBoxListener;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1069
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$GpsCheckBoxListener;->mFooterView:Landroid/widget/TextView;

    .line 1070
    iput p3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$GpsCheckBoxListener;->mMessage:I

    .line 1071
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1079
    if-eqz p2, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$GpsCheckBoxListener;->mFooterView:Landroid/widget/TextView;

    iget v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$GpsCheckBoxListener;->mMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1081
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$GpsCheckBoxListener;->mFooterView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$GpsCheckBoxListener;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 1087
    return-void

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$GpsCheckBoxListener;->mFooterView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$GpsCheckBoxListener;->mFooterView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
