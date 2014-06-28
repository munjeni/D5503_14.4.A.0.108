.class public Lcom/android/phone/am/SomcAmNumberPickerDialog;
.super Landroid/app/AlertDialog;
.source "SomcAmNumberPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/am/SomcAmNumberPickerDialog$OnNumberSetListener;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/phone/am/SomcAmNumberPickerDialog$OnNumberSetListener;

.field private mNumberPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/phone/am/SomcAmNumberPickerDialog$OnNumberSetListener;IIILjava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/android/phone/am/SomcAmNumberPickerDialog$OnNumberSetListener;
    .param p4, "number"    # I
    .param p5, "rangeMin"    # I
    .param p6, "rangeMax"    # I
    .param p7, "title"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 65
    iput-object p3, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mCallback:Lcom/android/phone/am/SomcAmNumberPickerDialog$OnNumberSetListener;

    .line 67
    invoke-virtual {p0, p7}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v2, -0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 74
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030015

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 76
    const v2, 0x7f07004b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    .line 79
    iget-object v2, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, p5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 80
    iget-object v2, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, p6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 81
    iget-object v2, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, p4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 82
    iget-object v2, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/am/SomcAmNumberPickerDialog$OnNumberSetListener;IIILjava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/android/phone/am/SomcAmNumberPickerDialog$OnNumberSetListener;
    .param p3, "number"    # I
    .param p4, "rangeMin"    # I
    .param p5, "rangeMax"    # I
    .param p6, "title"    # Ljava/lang/String;

    .prologue
    .line 45
    const v2, 0x7f0d0005

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/am/SomcAmNumberPickerDialog;-><init>(Landroid/content/Context;ILcom/android/phone/am/SomcAmNumberPickerDialog$OnNumberSetListener;IIILjava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    .line 99
    iput-object v0, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mCallback:Lcom/android/phone/am/SomcAmNumberPickerDialog$OnNumberSetListener;

    .line 100
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mCallback:Lcom/android/phone/am/SomcAmNumberPickerDialog$OnNumberSetListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 89
    iget-object v0, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mCallback:Lcom/android/phone/am/SomcAmNumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/phone/am/SomcAmNumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    .line 90
    iput-object v2, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    .line 91
    iput-object v2, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mCallback:Lcom/android/phone/am/SomcAmNumberPickerDialog$OnNumberSetListener;

    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 94
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 112
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "number":I
    iget-object v1, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 114
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/phone/am/SomcAmNumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    return-object v0
.end method
