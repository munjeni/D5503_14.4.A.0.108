.class final Lcom/android/mms/dom/smil/SmilPlayer$1;
.super Ljava/lang/Object;
.source "SmilPlayer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)I
    .locals 4
    .param p1, "o1"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .param p2, "o2"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilPlayer$1;->compare(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)I

    move-result v0

    return v0
.end method
