.class Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
.super Lcom/android/phone/ContextualRejectMsg;
.source "CalendarRejectMsgProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CalendarRejectMsgProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarContextualRejectMsg"
.end annotation


# instance fields
.field public allDay:Z

.field public endTimestamp:J

.field public startTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/phone/ContextualRejectMsg$Probability;I)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "probability"    # Lcom/android/phone/ContextualRejectMsg$Probability;
    .param p3, "iconResId"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/ContextualRejectMsg;-><init>(Ljava/lang/String;Lcom/android/phone/ContextualRejectMsg$Probability;I)V

    .line 41
    return-void
.end method
