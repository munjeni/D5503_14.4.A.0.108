.class public abstract Landroid/graphics/drawable/Drawable;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Drawable$ConstantState;,
        Landroid/graphics/drawable/Drawable$Callback;
    }
.end annotation


# static fields
.field private static final ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

.field private static final sUxpDrawableClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mChangingConfigurations:I

.field private mLayoutDirection:I

.field private mLevel:I

.field private mStateSet:[I

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 124
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    .line 139
    :try_start_0
    const-string v2, "com.sonyericsson.uxp.drawable.UxpDrawable"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    .local v1, "uxpDrawableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    sput-object v1, Landroid/graphics/drawable/Drawable;->sUxpDrawableClass:Ljava/lang/Class;

    .line 144
    return-void

    .line 140
    .end local v1    # "uxpDrawableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 141
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "uxpDrawableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    .line 128
    iput v1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 129
    iput v1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 130
    sget-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 1027
    return-void
.end method

.method public static createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x2000

    const/4 v0, 0x0

    .line 972
    if-nez p0, :cond_0

    .line 986
    :goto_0
    return-object v0

    .line 976
    :cond_0
    invoke-static {v6, v7, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 978
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 979
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 980
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 983
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :cond_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, 0x2000

    .line 819
    if-eqz p3, :cond_0

    move-object v0, p3

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 821
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 823
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 819
    :cond_0
    const-string v0, "Unknown drawable"

    goto :goto_0

    .line 823
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v5, 0x0

    .line 834
    if-nez p2, :cond_0

    move-object v0, v5

    .line 871
    :goto_0
    return-object v0

    .line 844
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 853
    .local v3, "pad":Landroid/graphics/Rect;
    if-nez p4, :cond_1

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 854
    .restart local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    :goto_1
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 856
    invoke-static {p0, p1, p2, v3, p4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 857
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_6

    .line 858
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 859
    .local v2, "np":[B
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 860
    :cond_2
    const/4 v2, 0x0

    .line 861
    const/4 v3, 0x0

    .line 863
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getLayoutBounds()[I

    move-result-object v6

    .line 864
    .local v6, "layoutBounds":[I
    const/4 v4, 0x0

    .line 865
    .local v4, "layoutBoundsRect":Landroid/graphics/Rect;
    if-eqz v6, :cond_4

    .line 866
    new-instance v4, Landroid/graphics/Rect;

    .end local v4    # "layoutBoundsRect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v5, 0x1

    aget v5, v6, v5

    const/4 v7, 0x2

    aget v7, v6, v7

    const/4 v8, 0x3

    aget v8, v6, v8

    invoke-direct {v4, v0, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v4    # "layoutBoundsRect":Landroid/graphics/Rect;
    :cond_4
    move-object v0, p0

    move-object v5, p3

    .line 869
    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 854
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "np":[B
    .end local v4    # "layoutBoundsRect":Landroid/graphics/Rect;
    .end local v6    # "layoutBounds":[I
    :cond_5
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    goto :goto_1

    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_6
    move-object v0, v5

    .line 871
    goto :goto_0
.end method

.method public static createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "srcName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v3, 0x2000

    .line 805
    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 807
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1, p0, p1, v2}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 809
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 805
    :cond_0
    const-string v0, "Unknown drawable"

    goto :goto_0

    .line 809
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 881
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 885
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    if-eq v2, v4, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 889
    :cond_1
    if-eq v2, v4, :cond_2

    .line 890
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "No start tag found"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 893
    :cond_2
    invoke-static {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 895
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_3

    .line 896
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown initial tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 899
    :cond_3
    return-object v1
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 909
    const/4 v1, 0x0

    .line 911
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 913
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v5, "selector"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 914
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 963
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    invoke-virtual {v1, p0, p1, p2}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 964
    return-object v1

    .line 915
    :cond_1
    const-string v5, "level-list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 916
    new-instance v1, Landroid/graphics/drawable/LevelListDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 917
    :cond_2
    const-string v5, "layer-list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 918
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 919
    :cond_3
    const-string/jumbo v5, "transition"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 920
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>()V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 921
    :cond_4
    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 922
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 923
    :cond_5
    const-string/jumbo v5, "shape"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 924
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 925
    :cond_6
    const-string/jumbo v5, "scale"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 926
    new-instance v1, Landroid/graphics/drawable/ScaleDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>()V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 927
    :cond_7
    const-string v5, "clip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 928
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Landroid/graphics/drawable/ClipDrawable;-><init>()V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 929
    :cond_8
    const-string/jumbo v5, "rotate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 930
    new-instance v1, Landroid/graphics/drawable/RotateDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 931
    :cond_9
    const-string v5, "animated-rotate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 932
    new-instance v1, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>()V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 933
    :cond_a
    const-string v5, "animation-list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 934
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 935
    :cond_b
    const-string v5, "inset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 936
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Landroid/graphics/drawable/InsetDrawable;-><init>()V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 937
    :cond_c
    const-string v5, "bitmap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 939
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 940
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p0, :cond_0

    move-object v5, v1

    .line 941
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 943
    :cond_d
    const-string/jumbo v5, "nine-patch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 944
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>()V

    .line 945
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p0, :cond_0

    move-object v5, v1

    .line 946
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 950
    :cond_e
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 951
    .local v2, "drawableClass":Ljava/lang/Class;
    sget-object v5, Landroid/graphics/drawable/Drawable;->sUxpDrawableClass:Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 952
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 957
    .end local v2    # "drawableClass":Ljava/lang/Class;
    :cond_f
    :goto_1
    if-nez v1, :cond_0

    .line 958
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": invalid drawable tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 954
    :catch_0
    move-exception v3

    .line 955
    .local v3, "ex":Ljava/lang/RuntimeException;
    throw v3

    .line 956
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private static drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "np"    # [B
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "layoutBounds"    # Landroid/graphics/Rect;
    .param p5, "srcName"    # Ljava/lang/String;

    .prologue
    .line 1073
    if-eqz p2, :cond_0

    .line 1074
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 1077
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static resolveOpacity(II)I
    .locals 2
    .param p0, "op1"    # I
    .param p1, "op2"    # I

    .prologue
    const/4 v0, -0x2

    const/4 v1, -0x3

    .line 661
    if-ne p0, p1, :cond_0

    .line 673
    .end local p0    # "op1":I
    :goto_0
    return p0

    .line 664
    .restart local p0    # "op1":I
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 665
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 667
    :cond_2
    if-eq p0, v1, :cond_3

    if-ne p1, v1, :cond_4

    :cond_3
    move p0, v1

    .line 668
    goto :goto_0

    .line 670
    :cond_4
    if-eq p0, v0, :cond_5

    if-ne p1, v0, :cond_6

    :cond_5
    move p0, v0

    .line 671
    goto :goto_0

    .line 673
    :cond_6
    const/4 p0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 466
    return-void
.end method

.method public final copyBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final copyBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 193
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 194
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 438
    const/16 v0, 0xff

    return v0
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    .line 225
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 228
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    .line 345
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 1067
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 537
    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 730
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 722
    const/4 v0, -0x1

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    return v0
.end method

.method public final getLevel()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 758
    .local v0, "intrinsicHeight":I
    if-lez v0, :cond_0

    .end local v0    # "intrinsicHeight":I
    :goto_0
    return v0

    .restart local v0    # "intrinsicHeight":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 744
    .local v0, "intrinsicWidth":I
    if-lez v0, :cond_0

    .end local v0    # "intrinsicWidth":I
    :goto_0
    return v0

    .restart local v0    # "intrinsicWidth":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getOpacity()I
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .prologue
    .line 780
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 769
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 770
    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 995
    sget-object v1, Lcom/android/internal/R$styleable;->Drawable:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 996
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 997
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 998
    return-void
.end method

.method inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;
    .param p4, "visibleAttr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1010
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 1011
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 359
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    :cond_0
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 798
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 715
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    .line 375
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 376
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 379
    :cond_0
    return-void
.end method

.method public abstract setAlpha(I)V
.end method

.method public setAutoMirrored(Z)V
    .locals 0
    .param p1, "mirrored"    # Z

    .prologue
    .line 607
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 159
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 161
    .local v0, "oldBounds":Landroid/graphics/Rect;
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "oldBounds":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 165
    .restart local v0    # "oldBounds":Landroid/graphics/Rect;
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, p4, :cond_3

    .line 167
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 169
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 171
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 172
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 174
    :cond_3
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 181
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 182
    return-void
.end method

.method public final setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    .line 330
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 331
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 0
    .param p1, "configs"    # I

    .prologue
    .line 241
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 242
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 461
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 462
    return-void
.end method

.method public abstract setColorFilter(Landroid/graphics/ColorFilter;)V
.end method

.method public setDither(Z)V
    .locals 0
    .param p1, "dither"    # Z

    .prologue
    .line 266
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 0
    .param p1, "filter"    # Z

    .prologue
    .line 274
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 419
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 420
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    .line 422
    :cond_0
    return-void
.end method

.method public final setLevel(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 557
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    if-eq v0, p1, :cond_0

    .line 558
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 559
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    .line 561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 505
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iput-object p1, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    .line 507
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 509
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 588
    iget-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 589
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 590
    iput-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 591
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 593
    :cond_0
    return v0

    .line 588
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 0
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .prologue
    .line 454
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 392
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 393
    invoke-interface {v0, p0, p1}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 395
    :cond_0
    return-void
.end method
