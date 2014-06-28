.class public Landroid/app/TimePickerDialog;
.super Landroid/app/AlertDialog;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mTimePicker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 94
    iput-object p3, p0, Landroid/app/TimePickerDialog;->mCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 95
    iput p4, p0, Landroid/app/TimePickerDialog;->mInitialHourOfDay:I

    .line 96
    iput p5, p0, Landroid/app/TimePickerDialog;->mInitialMinute:I

    .line 97
    iput-boolean p6, p0, Landroid/app/TimePickerDialog;->mIs24HourView:Z

    .line 99
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 100
    const v3, 0x104046c

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 103
    .local v1, "themeContext":Landroid/content/Context;
    const/4 v3, -0x1

    const v5, 0x104046e

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v3, v5, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 104
    const/4 v5, -0x2

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v3, v4

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v6, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 106
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 108
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x10900c2

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 109
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 110
    const v3, 0x102035c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TimePicker;

    iput-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 113
    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-boolean v4, p0, Landroid/app/TimePickerDialog;->mIs24HourView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 114
    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget v4, p0, Landroid/app/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 115
    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget v4, p0, Landroid/app/TimePickerDialog;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 116
    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 78
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 79
    return-void
.end method

.method private tryNotifyTimeSet()V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 135
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Landroid/widget/TimePicker;II)V

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/app/TimePickerDialog;->tryNotifyTimeSet()V

    .line 121
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 152
    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "hour":I
    const-string/jumbo v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 154
    .local v1, "minute":I
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 155
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 156
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 157
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string/jumbo v1, "minute"

    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-string v1, "is24hour"

    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    return-object v0
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 130
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minutOfHour"    # I

    .prologue
    .line 124
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 125
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 126
    return-void
.end method
