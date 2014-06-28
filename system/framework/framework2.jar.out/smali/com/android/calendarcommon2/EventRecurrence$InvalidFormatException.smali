.class public Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
.super Ljava/lang/RuntimeException;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidFormatException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 155
    return-void
.end method
