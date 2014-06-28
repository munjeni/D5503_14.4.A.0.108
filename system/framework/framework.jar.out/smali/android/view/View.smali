.class public Landroid/view/View;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$SendViewStateChangedAccessibilityEvent;,
        Landroid/view/View$MatchLabelForPredicate;,
        Landroid/view/View$MatchIdPredicate;,
        Landroid/view/View$AccessibilityDelegate;,
        Landroid/view/View$SendViewScrolledAccessibilityEvent;,
        Landroid/view/View$ScrollabilityCache;,
        Landroid/view/View$AttachInfo;,
        Landroid/view/View$BaseSavedState;,
        Landroid/view/View$UnsetPressedState;,
        Landroid/view/View$OnAttachStateChangeListener;,
        Landroid/view/View$OnSystemUiVisibilityChangeListener;,
        Landroid/view/View$OnCreateContextMenuListener;,
        Landroid/view/View$OnClickListener;,
        Landroid/view/View$OnFocusChangeListener;,
        Landroid/view/View$OnDragListener;,
        Landroid/view/View$OnLongClickListener;,
        Landroid/view/View$OnGenericMotionListener;,
        Landroid/view/View$OnHoverListener;,
        Landroid/view/View$OnTouchListener;,
        Landroid/view/View$OnKeyListener;,
        Landroid/view/View$PerformClick;,
        Landroid/view/View$CheckForTap;,
        Landroid/view/View$CheckForLongPress;,
        Landroid/view/View$MeasureSpec;,
        Landroid/view/View$DragShadowBuilder;,
        Landroid/view/View$OnLayoutChangeListener;,
        Landroid/view/View$ListenerInfo;,
        Landroid/view/View$TransformationInfo;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_CURSOR_POSITION_UNDEFINED:I = -0x1

.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field static final ACCESSIBILITY_LIVE_REGION_DEFAULT:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field static final ALL_RTL_PROPERTIES_RESOLVED:I = 0x60010220

.field public static final ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final CLICKABLE:I = 0x4000

.field private static final DBG:Z = false

.field public static final DEBUG_LAYOUT_PROPERTY:Ljava/lang/String; = "debug.layout"

.field static final DISABLED:I = 0x20

.field public static final DRAG_FLAG_GLOBAL:I = 0x1

.field static final DRAG_MASK:I = 0x3

.field static final DRAWING_CACHE_ENABLED:I = 0x8000

.field public static final DRAWING_CACHE_QUALITY_AUTO:I = 0x0

.field private static final DRAWING_CACHE_QUALITY_FLAGS:[I

.field public static final DRAWING_CACHE_QUALITY_HIGH:I = 0x100000

.field public static final DRAWING_CACHE_QUALITY_LOW:I = 0x80000

.field static final DRAWING_CACHE_QUALITY_MASK:I = 0x180000

.field static final DRAW_MASK:I = 0x80

.field static final DUPLICATE_PARENT_STATE:I = 0x400000

.field protected static final EMPTY_STATE_SET:[I

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final ENABLED_FOCUSED_STATE_SET:[I

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final ENABLED_STATE_SET:[I

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field static final FADING_EDGE_HORIZONTAL:I = 0x1000

.field static final FADING_EDGE_MASK:I = 0x3000

.field static final FADING_EDGE_NONE:I = 0x0

.field static final FADING_EDGE_VERTICAL:I = 0x2000

.field static final FILTER_TOUCHES_WHEN_OBSCURED:I = 0x400

.field public static final FIND_VIEWS_WITH_ACCESSIBILITY_NODE_PROVIDERS:I = 0x4

.field public static final FIND_VIEWS_WITH_CONTENT_DESCRIPTION:I = 0x2

.field public static final FIND_VIEWS_WITH_TEXT:I = 0x1

.field private static final FITS_SYSTEM_WINDOWS:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field public static final FOCUSABLES_ALL:I = 0x0

.field public static final FOCUSABLES_TOUCH_MODE:I = 0x1

.field static final FOCUSABLE_IN_TOUCH_MODE:I = 0x40000

.field private static final FOCUSABLE_MASK:I = 0x1

.field protected static final FOCUSED_SELECTED_STATE_SET:[I

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final FOCUSED_STATE_SET:[I

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field static final IMPORTANT_FOR_ACCESSIBILITY_DEFAULT:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final INVISIBLE:I = 0x4

.field public static final KEEP_SCREEN_ON:I = 0x4000000

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_NONE:I = 0x0

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field private static final LAYOUT_DIRECTION_DEFAULT:I = 0x2

.field private static final LAYOUT_DIRECTION_FLAGS:[I

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field static final LAYOUT_DIRECTION_RESOLVED_DEFAULT:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field static final LONG_CLICKABLE:I = 0x200000

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field public static final MEASURED_SIZE_MASK:I = 0xffffff

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field public static final NAVIGATION_BAR_TRANSIENT:I = 0x8000000

.field public static final NAVIGATION_BAR_TRANSLUCENT:I = -0x80000000

.field public static final NAVIGATION_BAR_UNHIDE:I = 0x20000000

.field private static final NONZERO_EPSILON:F = 0.001f

.field private static final NOT_FOCUSABLE:I = 0x0

.field public static final NO_ID:I = -0x1

.field static final OPTIONAL_FITS_SYSTEM_WINDOWS:I = 0x800

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field static final PARENT_SAVE_DISABLED:I = 0x20000000

.field static final PARENT_SAVE_DISABLED_MASK:I = 0x20000000

.field static final PFLAG2_ACCESSIBILITY_FOCUSED:I = 0x4000000

.field static final PFLAG2_ACCESSIBILITY_LIVE_REGION_MASK:I = 0x1800000

.field static final PFLAG2_ACCESSIBILITY_LIVE_REGION_SHIFT:I = 0x17

.field static final PFLAG2_DRAG_CAN_ACCEPT:I = 0x1

.field static final PFLAG2_DRAG_HOVERED:I = 0x2

.field static final PFLAG2_DRAWABLE_RESOLVED:I = 0x40000000

.field static final PFLAG2_HAS_TRANSIENT_STATE:I = -0x80000000

.field static final PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_MASK:I = 0x700000

.field static final PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_SHIFT:I = 0x14

.field static final PFLAG2_LAYOUT_DIRECTION_MASK:I = 0xc

.field static final PFLAG2_LAYOUT_DIRECTION_MASK_SHIFT:I = 0x2

.field static final PFLAG2_LAYOUT_DIRECTION_RESOLVED:I = 0x20

.field static final PFLAG2_LAYOUT_DIRECTION_RESOLVED_MASK:I = 0x30

.field static final PFLAG2_LAYOUT_DIRECTION_RESOLVED_RTL:I = 0x10

.field static final PFLAG2_PADDING_RESOLVED:I = 0x20000000

.field static final PFLAG2_SUBTREE_ACCESSIBILITY_STATE_CHANGED:I = 0x8000000

.field private static final PFLAG2_TEXT_ALIGNMENT_FLAGS:[I

.field static final PFLAG2_TEXT_ALIGNMENT_MASK:I = 0xe000

.field static final PFLAG2_TEXT_ALIGNMENT_MASK_SHIFT:I = 0xd

.field static final PFLAG2_TEXT_ALIGNMENT_RESOLVED:I = 0x10000

.field private static final PFLAG2_TEXT_ALIGNMENT_RESOLVED_DEFAULT:I = 0x20000

.field static final PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK:I = 0xe0000

.field static final PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK_SHIFT:I = 0x11

.field private static final PFLAG2_TEXT_DIRECTION_FLAGS:[I

.field static final PFLAG2_TEXT_DIRECTION_MASK:I = 0x1c0

.field static final PFLAG2_TEXT_DIRECTION_MASK_SHIFT:I = 0x6

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED:I = 0x200

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED_DEFAULT:I = 0x400

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED_MASK:I = 0x1c00

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED_MASK_SHIFT:I = 0xa

.field static final PFLAG2_VIEW_QUICK_REJECTED:I = 0x10000000

.field static final PFLAG3_CALLED_SUPER:I = 0x10

.field static final PFLAG3_IS_LAID_OUT:I = 0x4

.field static final PFLAG3_MEASURE_NEEDED_BEFORE_LAYOUT:I = 0x8

.field static final PFLAG3_VIEW_IS_ANIMATING_ALPHA:I = 0x2

.field static final PFLAG3_VIEW_IS_ANIMATING_TRANSFORM:I = 0x1

.field static final PFLAG_ACTIVATED:I = 0x40000000

.field static final PFLAG_ALPHA_SET:I = 0x40000

.field static final PFLAG_ANIMATION_STARTED:I = 0x10000

.field private static final PFLAG_AWAKEN_SCROLL_BARS_ON_ATTACH:I = 0x8000000

.field static final PFLAG_CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field static final PFLAG_DIRTY:I = 0x200000

.field static final PFLAG_DIRTY_MASK:I = 0x600000

.field static final PFLAG_DIRTY_OPAQUE:I = 0x400000

.field static final PFLAG_DRAWABLE_STATE_DIRTY:I = 0x400

.field static final PFLAG_DRAWING_CACHE_VALID:I = 0x8000

.field static final PFLAG_DRAWN:I = 0x20

.field static final PFLAG_DRAW_ANIMATION:I = 0x40

.field static final PFLAG_FOCUSED:I = 0x2

.field static final PFLAG_FORCE_LAYOUT:I = 0x1000

.field static final PFLAG_HAS_BOUNDS:I = 0x10

.field private static final PFLAG_HOVERED:I = 0x10000000

.field static final PFLAG_INVALIDATED:I = -0x80000000

.field static final PFLAG_IS_ROOT_NAMESPACE:I = 0x8

.field static final PFLAG_LAYOUT_REQUIRED:I = 0x2000

.field static final PFLAG_MEASURED_DIMENSION_SET:I = 0x800

.field static final PFLAG_ONLY_DRAWS_BACKGROUND:I = 0x100

.field static final PFLAG_OPAQUE_BACKGROUND:I = 0x800000

.field static final PFLAG_OPAQUE_MASK:I = 0x1800000

.field static final PFLAG_OPAQUE_SCROLLBARS:I = 0x1000000

.field private static final PFLAG_PIVOT_EXPLICITLY_SET:I = 0x20000000

.field private static final PFLAG_PREPRESSED:I = 0x2000000

.field private static final PFLAG_PRESSED:I = 0x4000

.field static final PFLAG_REQUEST_TRANSPARENT_REGIONS:I = 0x200

.field private static final PFLAG_SAVE_STATE_CALLED:I = 0x20000

.field static final PFLAG_SCROLL_CONTAINER:I = 0x80000

.field static final PFLAG_SCROLL_CONTAINER_ADDED:I = 0x100000

.field static final PFLAG_SELECTED:I = 0x4

.field static final PFLAG_SKIP_DRAW:I = 0x80

.field static final PFLAG_WANTS_FOCUS:I = 0x1

.field private static final POPULATING_ACCESSIBILITY_EVENT_TYPES:I = 0x2a1bf

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_STATE_SET:[I

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final PUBLIC_STATUS_BAR_VISIBILITY_MASK:I = 0x7fff

.field public static final ROTATION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final SAVE_DISABLED:I = 0x10000

.field static final SAVE_DISABLED_MASK:I = 0x10000

.field public static final SCALE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_STATE_OFF:I = 0x0

.field public static final SCREEN_STATE_ON:I = 0x1

.field static final SCROLLBARS_HORIZONTAL:I = 0x100

.field static final SCROLLBARS_INSET_MASK:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_INSET:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_OVERLAY:I = 0x0

.field static final SCROLLBARS_MASK:I = 0x300

.field static final SCROLLBARS_NONE:I = 0x0

.field public static final SCROLLBARS_OUTSIDE_INSET:I = 0x3000000

.field static final SCROLLBARS_OUTSIDE_MASK:I = 0x2000000

.field public static final SCROLLBARS_OUTSIDE_OVERLAY:I = 0x2000000

.field static final SCROLLBARS_STYLE_MASK:I = 0x3000000

.field static final SCROLLBARS_VERTICAL:I = 0x200

.field public static final SCROLLBAR_POSITION_DEFAULT:I = 0x0

.field public static final SCROLLBAR_POSITION_LEFT:I = 0x1

.field public static final SCROLLBAR_POSITION_RIGHT:I = 0x2

.field protected static final SELECTED_STATE_SET:[I

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SOMC_SYSTEM_UI_VISIBILITY_MASK:I = 0x60c0

.field public static final SOUND_EFFECTS_ENABLED:I = 0x8000000

.field public static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field public static final STATUS_BAR_DISABLE_CLOCK:I = 0x800000

.field public static final STATUS_BAR_DISABLE_EXPAND:I = 0x10000

.field public static final STATUS_BAR_DISABLE_HOME:I = 0x200000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_TICKER:I = 0x80000

.field public static final STATUS_BAR_DISABLE_RECENT:I = 0x1000000

.field public static final STATUS_BAR_DISABLE_SEARCH:I = 0x2000000

.field public static final STATUS_BAR_DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final STATUS_BAR_HIDDEN:I = 0x1

.field public static final STATUS_BAR_TRANSIENT:I = 0x4000000

.field public static final STATUS_BAR_TRANSLUCENT:I = 0x40000000

.field public static final STATUS_BAR_UNHIDE:I = 0x10000000

.field public static final STATUS_BAR_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_CLEARABLE_FLAGS:I = 0x7

.field public static final SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS:I = 0x2000

.field public static final SYSTEM_UI_FLAG_FULLSCREEN:I = 0x4

.field public static final SYSTEM_UI_FLAG_FULL_TRANSPARENCY:I = 0x4000

.field public static final SYSTEM_UI_FLAG_HIDE_NAVIGATION:I = 0x2

.field public static final SYSTEM_UI_FLAG_IMMERSIVE:I = 0x800

.field public static final SYSTEM_UI_FLAG_IMMERSIVE_STICKY:I = 0x1000

.field public static final SYSTEM_UI_FLAG_LAYOUTPARAMS_FULLSCREEN:I = 0x8000

.field public static final SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN:I = 0x400

.field public static final SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION:I = 0x200

.field public static final SYSTEM_UI_FLAG_LAYOUT_STABLE:I = 0x100

.field public static final SYSTEM_UI_FLAG_LIGHT:I = 0x40

.field public static final SYSTEM_UI_FLAG_LOW_PROFILE:I = 0x1

.field public static final SYSTEM_UI_FLAG_ROUNDED_CORNERS:I = 0x80

.field public static final SYSTEM_UI_FLAG_SKINNABLE_TRANSLUCENT_BARS:I = 0x20

.field public static final SYSTEM_UI_FLAG_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_LAYOUT_FLAGS:I = 0x600

.field public static final TEXT_ALIGNMENT_CENTER:I = 0x4

.field private static final TEXT_ALIGNMENT_DEFAULT:I = 0x1

.field public static final TEXT_ALIGNMENT_GRAVITY:I = 0x1

.field public static final TEXT_ALIGNMENT_INHERIT:I = 0x0

.field static final TEXT_ALIGNMENT_RESOLVED_DEFAULT:I = 0x1

.field public static final TEXT_ALIGNMENT_TEXT_END:I = 0x3

.field public static final TEXT_ALIGNMENT_TEXT_START:I = 0x2

.field public static final TEXT_ALIGNMENT_VIEW_END:I = 0x6

.field public static final TEXT_ALIGNMENT_VIEW_START:I = 0x5

.field public static final TEXT_DIRECTION_ANY_RTL:I = 0x2

.field private static final TEXT_DIRECTION_DEFAULT:I = 0x0

.field public static final TEXT_DIRECTION_FIRST_STRONG:I = 0x1

.field public static final TEXT_DIRECTION_INHERIT:I = 0x0

.field public static final TEXT_DIRECTION_LOCALE:I = 0x5

.field public static final TEXT_DIRECTION_LTR:I = 0x3

.field static final TEXT_DIRECTION_RESOLVED_DEFAULT:I = 0x1

.field public static final TEXT_DIRECTION_RTL:I = 0x4

.field public static final TRANSLATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATION_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNDEFINED_PADDING:I = -0x80000000

.field protected static final VIEW_LOG_TAG:Ljava/lang/String; = "View"

.field static final VIEW_STATE_ACCELERATED:I = 0x40

.field static final VIEW_STATE_ACTIVATED:I = 0x20

.field static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field static final VIEW_STATE_ENABLED:I = 0x8

.field static final VIEW_STATE_FOCUSED:I = 0x4

.field static final VIEW_STATE_HOVERED:I = 0x80

.field static final VIEW_STATE_IDS:[I

.field static final VIEW_STATE_PRESSED:I = 0x10

.field static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I

.field static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field private static final VISIBILITY_FLAGS:[I

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WILL_NOT_CACHE_DRAWING:I = 0x20000

.field static final WILL_NOT_DRAW:I = 0x80

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field public static final X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sCompatibilityDone:Z

.field private static sIgnoreMeasureCache:Z

.field private static sNextAccessibilityViewId:I

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sUseBrokenMakeMeasureSpec:Z


# instance fields
.field private mAccessibilityCursorPosition:I

.field mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field mAccessibilityViewId:I

.field private mAnimator:Landroid/view/ViewPropertyAnimator;

.field mAttachInfo:Landroid/view/View$AttachInfo;

.field private mBackground:Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "bg_"
    .end annotation
.end field

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field protected mBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public mCachingFailed:Z

.field private mClipBounds:Landroid/graphics/Rect;

.field private mContentDescription:Ljava/lang/CharSequence;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAnimation:Landroid/view/animation/Animation;

.field mDisplayList:Landroid/view/DisplayList;

.field private mDrawableState:[I

.field private mDrawingCache:Landroid/graphics/Bitmap;

.field private mDrawingCacheBackgroundColor:I

.field private mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

.field private mHardwareLayer:Landroid/view/HardwareLayer;

.field private mHasPerformedLongPress:Z

.field mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mKeyedTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelForId:I

.field private mLastIsOpaque:Z

.field mLayerPaint:Landroid/graphics/Paint;

.field mLayerType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "SOFTWARE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "HARDWARE"
            .end subannotation
        }
    .end annotation
.end field

.field private mLayoutInsets:Landroid/graphics/Insets;

.field protected mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mLeftPaddingDefined:Z

.field mListenerInfo:Landroid/view/View$ListenerInfo;

.field mLocalDirtyRect:Landroid/graphics/Rect;

.field private mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

.field private mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

.field private mMeasureCache:Landroid/util/LongSparseLongArray;

.field mMeasuredHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field mMeasuredWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mNextFocusDownId:I

.field mNextFocusForwardId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field private mOverScrollMode:I

.field mOverlay:Landroid/view/ViewOverlay;

.field protected mPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mParent:Landroid/view/ViewParent;

.field private mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/view/View$CheckForTap;

.field private mPerformClick:Landroid/view/View$PerformClick;

.field mPrivateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_LAYOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "LAYOUT_REQUIRED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "DRAWING_CACHE_INVALID"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "DRAWN"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_DRAWN"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x600000
                name = "DIRTY_OPAQUE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x600000
                name = "DIRTY"
            .end subannotation
        }
    .end annotation
.end field

.field mPrivateFlags2:I

.field mPrivateFlags3:I

.field mRecreateDisplayList:Z

.field private final mResources:Landroid/content/res/Resources;

.field protected mRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mRightPaddingDefined:Z

.field private mScrollCache:Landroid/view/View$ScrollabilityCache;

.field protected mScrollX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected mScrollY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field private mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

.field mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

.field private mSendingHoverAccessibilityEvents:Z

.field mSystemUiVisibility:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "SYSTEM_UI_FLAG_LOW_PROFILE"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "SYSTEM_UI_FLAG_HIDE_NAVIGATION"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "SYSTEM_UI_FLAG_SKINNABLE_TRANSLUCENT_BARS"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "SYSTEM_UI_FLAG_LIGHT"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "SYSTEM_UI_FLAG_ROUNDED_CORNERS"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "SYSTEM_UI_FLAG_FULL_TRANSPARENCY"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x7fff
                name = "SYSTEM_UI_FLAG_VISIBLE"
                outputIf = true
            .end subannotation
        }
    .end annotation
.end field

.field protected mTag:Ljava/lang/Object;

.field protected mTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mTouchDelegate:Landroid/view/TouchDelegate;

.field private mTouchSlop:I

.field mTransformationInfo:Landroid/view/View$TransformationInfo;

.field mTransientStateCount:I

.field private mUnscaledDrawingCache:Landroid/graphics/Bitmap;

.field private mUnsetPressedState:Landroid/view/View$UnsetPressedState;

.field protected mUserPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingEnd:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mUserPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingLeftInitial:I

.field protected mUserPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingRightInitial:I

.field mUserPaddingStart:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mVerticalScrollFactor:F

.field private mVerticalScrollbarPosition:I

.field mViewFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mWindowAttachCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 702
    const/4 v9, 0x0

    sput-boolean v9, Landroid/view/View;->sCompatibilityDone:Z

    .line 707
    const/4 v9, 0x0

    sput-boolean v9, Landroid/view/View;->sUseBrokenMakeMeasureSpec:Z

    .line 712
    const/4 v9, 0x0

    sput-boolean v9, Landroid/view/View;->sIgnoreMeasureCache:Z

    .line 763
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    sput-object v9, Landroid/view/View;->VISIBILITY_FLAGS:[I

    .line 918
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    sput-object v9, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    .line 1384
    const/16 v9, 0x14

    new-array v9, v9, [I

    fill-array-data v9, :array_2

    sput-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    .line 1398
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v9, v9, 0x2

    sget-object v10, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v10, v10

    if-eq v9, v10, :cond_0

    .line 1399
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1402
    :cond_0
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    new-array v4, v9, [I

    .line 1403
    .local v4, "orderedIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v9, v9

    if-ge v1, v9, :cond_3

    .line 1404
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v8, v9, v1

    .line 1405
    .local v8, "viewState":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    if-ge v2, v9, :cond_2

    .line 1406
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    aget v9, v9, v2

    if-ne v9, v8, :cond_1

    .line 1407
    mul-int/lit8 v9, v1, 0x2

    aput v8, v4, v9

    .line 1408
    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Landroid/view/View;->VIEW_STATE_IDS:[I

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    aput v10, v4, v9

    .line 1405
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 1403
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1412
    .end local v2    # "j":I
    .end local v8    # "viewState":I
    :cond_3
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v0, v9, 0x2

    .line 1413
    .local v0, "NUM_BITS":I
    const/4 v9, 0x1

    shl-int/2addr v9, v0

    new-array v9, v9, [[I

    sput-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    .line 1414
    const/4 v1, 0x0

    :goto_2
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    array-length v9, v9

    if-ge v1, v9, :cond_6

    .line 1415
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 1416
    .local v3, "numBits":I
    new-array v7, v3, [I

    .line 1417
    .local v7, "set":[I
    const/4 v5, 0x0

    .line 1418
    .local v5, "pos":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    array-length v9, v4

    if-ge v2, v9, :cond_5

    .line 1419
    add-int/lit8 v9, v2, 0x1

    aget v9, v4, v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_4

    .line 1420
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    aget v9, v4, v2

    aput v9, v7, v5

    move v5, v6

    .line 1418
    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 1423
    :cond_5
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aput-object v7, v9, v1

    .line 1414
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1426
    .end local v2    # "j":I
    .end local v3    # "numBits":I
    .end local v5    # "pos":I
    .end local v7    # "set":[I
    :cond_6
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 1427
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x1

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    .line 1428
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x2

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->SELECTED_STATE_SET:[I

    .line 1429
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x3

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1431
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x4

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_STATE_SET:[I

    .line 1432
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x5

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1434
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x6

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    .line 1436
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x7

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1439
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x8

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 1440
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x9

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1442
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xa

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    .line 1444
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xb

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1447
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xc

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    .line 1449
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xd

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1452
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xe

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1455
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xf

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1459
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x10

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_STATE_SET:[I

    .line 1460
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x11

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1462
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x12

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    .line 1464
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x13

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1467
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x14

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    .line 1469
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x15

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1472
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x16

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1475
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x17

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1478
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x18

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    .line 1480
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x19

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1483
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1a

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 1486
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1b

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1489
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1c

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 1492
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1d

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1495
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1e

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1498
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1f

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1525
    new-instance v9, Ljava/lang/ThreadLocal;

    invoke-direct {v9}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v9, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 1872
    const/4 v9, 0x4

    new-array v9, v9, [I

    fill-array-data v9, :array_3

    sput-object v9, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    .line 1953
    const/4 v9, 0x6

    new-array v9, v9, [I

    fill-array-data v9, :array_4

    sput-object v9, Landroid/view/View;->PFLAG2_TEXT_DIRECTION_FLAGS:[I

    .line 2068
    const/4 v9, 0x7

    new-array v9, v9, [I

    fill-array-data v9, :array_5

    sput-object v9, Landroid/view/View;->PFLAG2_TEXT_ALIGNMENT_FLAGS:[I

    .line 3559
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v9, Landroid/view/View;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18237
    new-instance v9, Landroid/view/View$3;

    const-string v10, "alpha"

    invoke-direct {v9, v10}, Landroid/view/View$3;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 18253
    new-instance v9, Landroid/view/View$4;

    const-string/jumbo v10, "translationX"

    invoke-direct {v9, v10}, Landroid/view/View$4;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 18269
    new-instance v9, Landroid/view/View$5;

    const-string/jumbo v10, "translationY"

    invoke-direct {v9, v10}, Landroid/view/View$5;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 18285
    new-instance v9, Landroid/view/View$6;

    const-string/jumbo v10, "x"

    invoke-direct {v9, v10}, Landroid/view/View$6;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->X:Landroid/util/Property;

    .line 18301
    new-instance v9, Landroid/view/View$7;

    const-string/jumbo v10, "y"

    invoke-direct {v9, v10}, Landroid/view/View$7;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->Y:Landroid/util/Property;

    .line 18317
    new-instance v9, Landroid/view/View$8;

    const-string/jumbo v10, "rotation"

    invoke-direct {v9, v10}, Landroid/view/View$8;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 18333
    new-instance v9, Landroid/view/View$9;

    const-string/jumbo v10, "rotationX"

    invoke-direct {v9, v10}, Landroid/view/View$9;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    .line 18349
    new-instance v9, Landroid/view/View$10;

    const-string/jumbo v10, "rotationY"

    invoke-direct {v9, v10}, Landroid/view/View$10;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    .line 18365
    new-instance v9, Landroid/view/View$11;

    const-string/jumbo v10, "scaleX"

    invoke-direct {v9, v10}, Landroid/view/View$11;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 18381
    new-instance v9, Landroid/view/View$12;

    const-string/jumbo v10, "scaleY"

    invoke-direct {v9, v10}, Landroid/view/View$12;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    return-void

    .line 763
    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data

    .line 918
    :array_1
    .array-data 4
        0x0
        0x80000
        0x100000
    .end array-data

    .line 1384
    :array_2
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data

    .line 1872
    :array_3
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 1953
    :array_4
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0x100
        0x140
    .end array-data

    .line 2068
    :array_5
    .array-data 4
        0x0
        0x2000
        0x4000
        0x6000
        0x8000
        0xa000
        0xc000
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 4099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1566
    iput-boolean v2, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1575
    iput v0, p0, Landroid/view/View;->mID:I

    .line 1581
    iput v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 1583
    iput v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    .line 2909
    iput v2, p0, Landroid/view/View;->mTransientStateCount:I

    .line 3067
    iput-object v1, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    .line 3126
    iput v2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 3133
    iput v2, p0, Landroid/view/View;->mPaddingRight:I

    .line 3165
    iput v0, p0, Landroid/view/View;->mLabelForId:I

    .line 3238
    iput-boolean v2, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 3243
    iput-boolean v2, p0, Landroid/view/View;->mRightPaddingDefined:Z

    .line 3248
    iput v3, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 3252
    iput v3, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 3327
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 3333
    iput v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 3339
    iput v0, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 3345
    iput v0, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 3351
    iput v0, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 3357
    iput v0, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 3360
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 3392
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 3398
    iput v2, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 3413
    iput-object v1, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3513
    iput v2, p0, Landroid/view/View;->mLayerType:I

    .line 3555
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 4100
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 4101
    return-void

    :cond_0
    move-object v0, v1

    .line 3555
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/high16 v5, -0x80000000

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 3567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    iput-object v2, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1566
    iput-boolean v4, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1575
    iput v1, p0, Landroid/view/View;->mID:I

    .line 1581
    iput v1, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 1583
    iput v1, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    .line 2909
    iput v4, p0, Landroid/view/View;->mTransientStateCount:I

    .line 3067
    iput-object v2, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    .line 3126
    iput v4, p0, Landroid/view/View;->mPaddingLeft:I

    .line 3133
    iput v4, p0, Landroid/view/View;->mPaddingRight:I

    .line 3165
    iput v1, p0, Landroid/view/View;->mLabelForId:I

    .line 3238
    iput-boolean v4, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 3243
    iput-boolean v4, p0, Landroid/view/View;->mRightPaddingDefined:Z

    .line 3248
    iput v5, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 3252
    iput v5, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 3327
    iput-object v2, p0, Landroid/view/View;->mDrawableState:[I

    .line 3333
    iput v1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 3339
    iput v1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 3345
    iput v1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 3351
    iput v1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 3357
    iput v1, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 3360
    iput-object v2, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 3392
    iput-object v2, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 3398
    iput v4, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 3413
    iput-object v2, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3513
    iput v4, p0, Landroid/view/View;->mLayerType:I

    .line 3555
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v1, p0, v4}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 3568
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 3569
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 3570
    const/high16 v1, 0x18000000

    iput v1, p0, Landroid/view/View;->mViewFlags:I

    .line 3572
    const v1, 0x22408

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 3579
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/view/View;->mTouchSlop:I

    .line 3580
    invoke-virtual {p0, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 3581
    iput v5, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 3582
    iput v5, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 3584
    sget-boolean v1, Landroid/view/View;->sCompatibilityDone:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 3585
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 3588
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-gt v0, v1, :cond_4

    move v1, v3

    :goto_1
    sput-boolean v1, Landroid/view/View;->sUseBrokenMakeMeasureSpec:Z

    .line 3592
    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    move v4, v3

    :cond_1
    sput-boolean v4, Landroid/view/View;->sIgnoreMeasureCache:Z

    .line 3594
    sput-boolean v3, Landroid/view/View;->sCompatibilityDone:Z

    .line 3596
    .end local v0    # "targetSdkVersion":I
    :cond_2
    return-void

    :cond_3
    move-object v1, v2

    .line 3555
    goto :goto_0

    .restart local v0    # "targetSdkVersion":I
    :cond_4
    move v1, v4

    .line 3588
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3615
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3616
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 50
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 3636
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3638
    sget-object v48, Lcom/android/internal/R$styleable;->View:[I

    const/16 v49, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move/from16 v3, p3

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 3641
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 3643
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    const/16 v19, -0x1

    .line 3644
    .local v19, "leftPadding":I
    const/16 v38, -0x1

    .line 3645
    .local v38, "topPadding":I
    const/16 v23, -0x1

    .line 3646
    .local v23, "rightPadding":I
    const/4 v9, -0x1

    .line 3647
    .local v9, "bottomPadding":I
    const/high16 v31, -0x80000000

    .line 3648
    .local v31, "startPadding":I
    const/high16 v11, -0x80000000

    .line 3650
    .local v11, "endPadding":I
    const/16 v22, -0x1

    .line 3652
    .local v22, "padding":I
    const/16 v44, 0x0

    .line 3653
    .local v44, "viewFlagValues":I
    const/16 v43, 0x0

    .line 3655
    .local v43, "viewFlagMasks":I
    const/16 v30, 0x0

    .line 3657
    .local v30, "setScrollContainer":Z
    const/16 v46, 0x0

    .line 3658
    .local v46, "x":I
    const/16 v47, 0x0

    .line 3660
    .local v47, "y":I
    const/16 v40, 0x0

    .line 3661
    .local v40, "tx":F
    const/16 v41, 0x0

    .line 3662
    .local v41, "ty":F
    const/16 v25, 0x0

    .line 3663
    .local v25, "rotation":F
    const/16 v26, 0x0

    .line 3664
    .local v26, "rotationX":F
    const/16 v27, 0x0

    .line 3665
    .local v27, "rotationY":F
    const/high16 v33, 0x3f800000

    .line 3666
    .local v33, "sx":F
    const/high16 v34, 0x3f800000

    .line 3667
    .local v34, "sy":F
    const/16 v39, 0x0

    .line 3669
    .local v39, "transformSet":Z
    const/16 v28, 0x0

    .line 3670
    .local v28, "scrollbarStyle":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mOverScrollMode:I

    move/from16 v21, v0

    .line 3671
    .local v21, "overScrollMode":I
    const/16 v17, 0x0

    .line 3673
    .local v17, "initializeScrollbars":Z
    const/16 v32, 0x0

    .line 3674
    .local v32, "startPaddingDefined":Z
    const/4 v12, 0x0

    .line 3675
    .local v12, "endPaddingDefined":Z
    const/16 v20, 0x0

    .line 3676
    .local v20, "leftPaddingDefined":Z
    const/16 v24, 0x0

    .line 3678
    .local v24, "rightPaddingDefined":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v48

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v35, v0

    .line 3680
    .local v35, "targetSdkVersion":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 3681
    .local v5, "N":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v5, :cond_5

    .line 3682
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 3683
    .local v7, "attr":I
    packed-switch v7, :pswitch_data_0

    .line 3681
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 3685
    :pswitch_1
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3686
    goto :goto_1

    .line 3688
    :pswitch_2
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    .line 3689
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 3690
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 3691
    const/16 v20, 0x1

    .line 3692
    const/16 v24, 0x1

    .line 3693
    goto :goto_1

    .line 3695
    :pswitch_3
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    .line 3696
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 3697
    const/16 v20, 0x1

    .line 3698
    goto :goto_1

    .line 3700
    :pswitch_4
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v38

    .line 3701
    goto :goto_1

    .line 3703
    :pswitch_5
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v23

    .line 3704
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 3705
    const/16 v24, 0x1

    .line 3706
    goto :goto_1

    .line 3708
    :pswitch_6
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 3709
    goto :goto_1

    .line 3711
    :pswitch_7
    const/high16 v48, -0x80000000

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v31

    .line 3712
    const/high16 v48, -0x80000000

    move/from16 v0, v31

    move/from16 v1, v48

    if-eq v0, v1, :cond_1

    const/16 v32, 0x1

    .line 3713
    :goto_2
    goto :goto_1

    .line 3712
    :cond_1
    const/16 v32, 0x0

    goto :goto_2

    .line 3715
    :pswitch_8
    const/high16 v48, -0x80000000

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 3716
    const/high16 v48, -0x80000000

    move/from16 v0, v48

    if-eq v11, v0, :cond_2

    const/4 v12, 0x1

    .line 3717
    :goto_3
    goto :goto_1

    .line 3716
    :cond_2
    const/4 v12, 0x0

    goto :goto_3

    .line 3719
    :pswitch_9
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v46

    .line 3720
    goto/16 :goto_1

    .line 3722
    :pswitch_a
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v47

    .line 3723
    goto/16 :goto_1

    .line 3725
    :pswitch_b
    const/high16 v48, 0x3f800000

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1

    .line 3728
    :pswitch_c
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    goto/16 :goto_1

    .line 3731
    :pswitch_d
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_1

    .line 3734
    :pswitch_e
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v40, v0

    .line 3735
    const/16 v39, 0x1

    .line 3736
    goto/16 :goto_1

    .line 3738
    :pswitch_f
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v41, v0

    .line 3739
    const/16 v39, 0x1

    .line 3740
    goto/16 :goto_1

    .line 3742
    :pswitch_10
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v25

    .line 3743
    const/16 v39, 0x1

    .line 3744
    goto/16 :goto_1

    .line 3746
    :pswitch_11
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v26

    .line 3747
    const/16 v39, 0x1

    .line 3748
    goto/16 :goto_1

    .line 3750
    :pswitch_12
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 3751
    const/16 v39, 0x1

    .line 3752
    goto/16 :goto_1

    .line 3754
    :pswitch_13
    const/high16 v48, 0x3f800000

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v33

    .line 3755
    const/16 v39, 0x1

    .line 3756
    goto/16 :goto_1

    .line 3758
    :pswitch_14
    const/high16 v48, 0x3f800000

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v34

    .line 3759
    const/16 v39, 0x1

    .line 3760
    goto/16 :goto_1

    .line 3762
    :pswitch_15
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mID:I

    goto/16 :goto_1

    .line 3765
    :pswitch_16
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mTag:Ljava/lang/Object;

    goto/16 :goto_1

    .line 3768
    :pswitch_17
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_0

    .line 3769
    or-int/lit8 v44, v44, 0x2

    .line 3770
    or-int/lit8 v43, v43, 0x2

    goto/16 :goto_1

    .line 3774
    :pswitch_18
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_0

    .line 3775
    or-int/lit8 v44, v44, 0x1

    .line 3776
    or-int/lit8 v43, v43, 0x1

    goto/16 :goto_1

    .line 3780
    :pswitch_19
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_0

    .line 3781
    const v48, 0x40001

    or-int v44, v44, v48

    .line 3782
    const v48, 0x40001

    or-int v43, v43, v48

    goto/16 :goto_1

    .line 3786
    :pswitch_1a
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_0

    .line 3787
    move/from16 v0, v44

    or-int/lit16 v0, v0, 0x4000

    move/from16 v44, v0

    .line 3788
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x4000

    move/from16 v43, v0

    goto/16 :goto_1

    .line 3792
    :pswitch_1b
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_0

    .line 3793
    const/high16 v48, 0x200000

    or-int v44, v44, v48

    .line 3794
    const/high16 v48, 0x200000

    or-int v43, v43, v48

    goto/16 :goto_1

    .line 3798
    :pswitch_1c
    const/16 v48, 0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-nez v48, :cond_0

    .line 3799
    const/high16 v48, 0x10000

    or-int v44, v44, v48

    .line 3800
    const/high16 v48, 0x10000

    or-int v43, v43, v48

    goto/16 :goto_1

    .line 3804
    :pswitch_1d
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_0

    .line 3805
    const/high16 v48, 0x400000

    or-int v44, v44, v48

    .line 3806
    const/high16 v48, 0x400000

    or-int v43, v43, v48

    goto/16 :goto_1

    .line 3810
    :pswitch_1e
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v45

    .line 3811
    .local v45, "visibility":I
    if-eqz v45, :cond_0

    .line 3812
    sget-object v48, Landroid/view/View;->VISIBILITY_FLAGS:[I

    aget v48, v48, v45

    or-int v44, v44, v48

    .line 3813
    or-int/lit8 v43, v43, 0xc

    goto/16 :goto_1

    .line 3818
    .end local v45    # "visibility":I
    :pswitch_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v48, v0

    and-int/lit8 v48, v48, -0x3d

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 3821
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 3822
    .local v18, "layoutDirection":I
    const/16 v48, -0x1

    move/from16 v0, v18

    move/from16 v1, v48

    if-eq v0, v1, :cond_3

    sget-object v48, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    aget v42, v48, v18

    .line 3824
    .local v42, "value":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v48, v0

    shl-int/lit8 v49, v42, 0x2

    or-int v48, v48, v49

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .line 3822
    .end local v42    # "value":I
    :cond_3
    const/16 v42, 0x2

    goto :goto_4

    .line 3827
    .end local v18    # "layoutDirection":I
    :pswitch_20
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 3828
    .local v10, "cacheQuality":I
    if-eqz v10, :cond_0

    .line 3829
    sget-object v48, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    aget v48, v48, v10

    or-int v44, v44, v48

    .line 3830
    const/high16 v48, 0x180000

    or-int v43, v43, v48

    goto/16 :goto_1

    .line 3834
    .end local v10    # "cacheQuality":I
    :pswitch_21
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3837
    :pswitch_22
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setLabelFor(I)V

    goto/16 :goto_1

    .line 3840
    :pswitch_23
    const/16 v48, 0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-nez v48, :cond_0

    .line 3841
    const v48, -0x8000001

    and-int v44, v44, v48

    .line 3842
    const/high16 v48, 0x8000000

    or-int v43, v43, v48

    goto/16 :goto_1

    .line 3846
    :pswitch_24
    const/16 v48, 0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-nez v48, :cond_0

    .line 3847
    const v48, -0x10000001

    and-int v44, v44, v48

    .line 3848
    const/high16 v48, 0x10000000

    or-int v43, v43, v48

    goto/16 :goto_1

    .line 3852
    :pswitch_25
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v29

    .line 3853
    .local v29, "scrollbars":I
    if-eqz v29, :cond_0

    .line 3854
    or-int v44, v44, v29

    .line 3855
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x300

    move/from16 v43, v0

    .line 3856
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 3861
    .end local v29    # "scrollbars":I
    :pswitch_26
    const/16 v48, 0xe

    move/from16 v0, v35

    move/from16 v1, v48

    if-ge v0, v1, :cond_0

    .line 3867
    :pswitch_27
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 3868
    .local v13, "fadingEdge":I
    if-eqz v13, :cond_0

    .line 3869
    or-int v44, v44, v13

    .line 3870
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x3000

    move/from16 v43, v0

    .line 3871
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->initializeFadingEdge(Landroid/content/res/TypedArray;)V

    goto/16 :goto_1

    .line 3875
    .end local v13    # "fadingEdge":I
    :pswitch_28
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v28

    .line 3876
    if-eqz v28, :cond_0

    .line 3877
    const/high16 v48, 0x3000000

    and-int v48, v48, v28

    or-int v44, v44, v48

    .line 3878
    const/high16 v48, 0x3000000

    or-int v43, v43, v48

    goto/16 :goto_1

    .line 3882
    :pswitch_29
    const/16 v30, 0x1

    .line 3883
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_0

    .line 3884
    const/16 v48, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    goto/16 :goto_1

    .line 3888
    :pswitch_2a
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_0

    .line 3889
    const/high16 v48, 0x4000000

    or-int v44, v44, v48

    .line 3890
    const/high16 v48, 0x4000000

    or-int v43, v43, v48

    goto/16 :goto_1

    .line 3894
    :pswitch_2b
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_0

    .line 3895
    move/from16 v0, v44

    or-int/lit16 v0, v0, 0x400

    move/from16 v44, v0

    .line 3896
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x400

    move/from16 v43, v0

    goto/16 :goto_1

    .line 3900
    :pswitch_2c
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusLeftId:I

    goto/16 :goto_1

    .line 3903
    :pswitch_2d
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusRightId:I

    goto/16 :goto_1

    .line 3906
    :pswitch_2e
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusUpId:I

    goto/16 :goto_1

    .line 3909
    :pswitch_2f
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusDownId:I

    goto/16 :goto_1

    .line 3912
    :pswitch_30
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusForwardId:I

    goto/16 :goto_1

    .line 3915
    :pswitch_31
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinWidth:I

    goto/16 :goto_1

    .line 3918
    :pswitch_32
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinHeight:I

    goto/16 :goto_1

    .line 3921
    :pswitch_33
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v48

    if-eqz v48, :cond_4

    .line 3922
    new-instance v48, Ljava/lang/IllegalStateException;

    const-string v49, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct/range {v48 .. v49}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v48

    .line 3926
    :cond_4
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3927
    .local v14, "handlerName":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 3928
    new-instance v48, Landroid/view/View$1;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Landroid/view/View$1;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 3962
    .end local v14    # "handlerName":Ljava/lang/String;
    :pswitch_34
    const/16 v48, 0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    .line 3963
    goto/16 :goto_1

    .line 3965
    :pswitch_35
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mVerticalScrollbarPosition:I

    goto/16 :goto_1

    .line 3968
    :pswitch_36
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v48

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 3972
    :pswitch_37
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v48, v0

    move/from16 v0, v48

    and-int/lit16 v0, v0, -0x1c1

    move/from16 v48, v0

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 3974
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v37

    .line 3975
    .local v37, "textDirection":I
    const/16 v48, -0x1

    move/from16 v0, v37

    move/from16 v1, v48

    if-eq v0, v1, :cond_0

    .line 3976
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v48, v0

    sget-object v49, Landroid/view/View;->PFLAG2_TEXT_DIRECTION_FLAGS:[I

    aget v49, v49, v37

    or-int v48, v48, v49

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .line 3981
    .end local v37    # "textDirection":I
    :pswitch_38
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v48, v0

    const v49, -0xe001

    and-int v48, v48, v49

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 3983
    const/16 v48, 0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v36

    .line 3984
    .local v36, "textAlignment":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v48, v0

    sget-object v49, Landroid/view/View;->PFLAG2_TEXT_ALIGNMENT_FLAGS:[I

    aget v49, v49, v36

    or-int v48, v48, v49

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .line 3987
    .end local v36    # "textAlignment":I
    :pswitch_39
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto/16 :goto_1

    .line 3991
    :pswitch_3a
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    goto/16 :goto_1

    .line 3996
    .end local v7    # "attr":I
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 4001
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingStart:I

    .line 4002
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/View;->mUserPaddingEnd:I

    .line 4004
    if-eqz v8, :cond_6

    .line 4005
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4010
    :cond_6
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 4011
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mRightPaddingDefined:Z

    .line 4013
    if-ltz v22, :cond_7

    .line 4014
    move/from16 v19, v22

    .line 4015
    move/from16 v38, v22

    .line 4016
    move/from16 v23, v22

    .line 4017
    move/from16 v9, v22

    .line 4018
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 4019
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 4022
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/view/View;->isRtlCompatibilityMode()Z

    move-result v48

    if-eqz v48, :cond_14

    .line 4030
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mLeftPaddingDefined:Z

    move/from16 v48, v0

    if-nez v48, :cond_8

    if-eqz v32, :cond_8

    .line 4031
    move/from16 v19, v31

    .line 4033
    :cond_8
    if-ltz v19, :cond_12

    move/from16 v48, v19

    :goto_5
    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 4034
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mRightPaddingDefined:Z

    move/from16 v48, v0

    if-nez v48, :cond_9

    if-eqz v12, :cond_9

    .line 4035
    move/from16 v23, v11

    .line 4037
    :cond_9
    if-ltz v23, :cond_13

    move/from16 v48, v23

    :goto_6
    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 4054
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingLeftInitial:I

    move/from16 v48, v0

    if-ltz v38, :cond_18

    .end local v38    # "topPadding":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRightInitial:I

    move/from16 v49, v0

    if-ltz v9, :cond_19

    .end local v9    # "bottomPadding":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v38

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 4060
    if-eqz v43, :cond_b

    .line 4061
    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setFlags(II)V

    .line 4064
    :cond_b
    if-eqz v17, :cond_c

    .line 4065
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 4068
    :cond_c
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 4071
    if-eqz v28, :cond_d

    .line 4072
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->recomputePadding()V

    .line 4075
    :cond_d
    if-nez v46, :cond_e

    if-eqz v47, :cond_f

    .line 4076
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 4079
    :cond_f
    if-eqz v39, :cond_10

    .line 4080
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 4081
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4082
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 4083
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    .line 4084
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 4085
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 4086
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 4089
    :cond_10
    if-nez v30, :cond_11

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0x200

    move/from16 v48, v0

    if-eqz v48, :cond_11

    .line 4090
    const/16 v48, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    .line 4093
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 4094
    return-void

    .line 4033
    .restart local v9    # "bottomPadding":I
    .restart local v38    # "topPadding":I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingLeftInitial:I

    move/from16 v48, v0

    goto/16 :goto_5

    .line 4037
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRightInitial:I

    move/from16 v48, v0

    goto/16 :goto_6

    .line 4044
    :cond_14
    if-nez v32, :cond_15

    if-eqz v12, :cond_17

    :cond_15
    const/4 v15, 0x1

    .line 4046
    .local v15, "hasRelativePadding":Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mLeftPaddingDefined:Z

    move/from16 v48, v0

    if-eqz v48, :cond_16

    if-nez v15, :cond_16

    .line 4047
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 4049
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mRightPaddingDefined:Z

    move/from16 v48, v0

    if-eqz v48, :cond_a

    if-nez v15, :cond_a

    .line 4050
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingRightInitial:I

    goto/16 :goto_7

    .line 4044
    .end local v15    # "hasRelativePadding":Z
    :cond_17
    const/4 v15, 0x0

    goto :goto_a

    .line 4054
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v38, v0

    goto/16 :goto_8

    .end local v38    # "topPadding":I
    :cond_19
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mPaddingBottom:I

    goto/16 :goto_9

    .line 3683
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_28
        :pswitch_15
        :pswitch_16
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_18
        :pswitch_19
        :pswitch_1e
        :pswitch_17
        :pswitch_25
        :pswitch_26
        :pswitch_0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_20
        :pswitch_1d
        :pswitch_31
        :pswitch_32
        :pswitch_23
        :pswitch_2a
        :pswitch_29
        :pswitch_24
        :pswitch_33
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_34
        :pswitch_2b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_13
        :pswitch_14
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_35
        :pswitch_30
        :pswitch_36
        :pswitch_27
        :pswitch_39
        :pswitch_37
        :pswitch_38
        :pswitch_1f
        :pswitch_7
        :pswitch_8
        :pswitch_22
        :pswitch_3a
    .end packed-switch
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 677
    sget-boolean v0, Landroid/view/View;->sUseBrokenMakeMeasureSpec:Z

    return v0
.end method

.method static synthetic access$2502(Landroid/view/View;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Z

    .prologue
    .line 677
    iput-boolean p1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$2600(Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I

    .prologue
    .line 677
    invoke-direct {p0, p1}, Landroid/view/View;->checkForLongClick(I)V

    return-void
.end method

.method static synthetic access$2700(Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 677
    iget v0, p0, Landroid/view/View;->mLabelForId:I

    return v0
.end method

.method static synthetic access$2800(Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 677
    invoke-direct {p0}, Landroid/view/View;->inLiveRegion()Z

    move-result v0

    return v0
.end method

.method private checkForLongClick(I)V
    .locals 3
    .param p1, "delayOffset"    # I

    .prologue
    const/high16 v1, 0x200000

    .line 17572
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 17573
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 17575
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-nez v0, :cond_0

    .line 17576
    new-instance v0, Landroid/view/View$CheckForLongPress;

    invoke-direct {v0, p0}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    .line 17578
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {v0}, Landroid/view/View$CheckForLongPress;->rememberWindowAttachCount()V

    .line 17579
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17582
    :cond_1
    return-void
.end method

.method private cleanupDraw()V
    .locals 2

    .prologue
    .line 12576
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 12577
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 12578
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->markDirty()V

    .line 12579
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->enqueueDisplayList(Landroid/view/DisplayList;)V

    .line 12581
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->cancelInvalidate(Landroid/view/View;)V

    .line 12586
    :goto_0
    return-void

    .line 12584
    :cond_1
    invoke-direct {p0}, Landroid/view/View;->resetDisplayList()V

    goto :goto_0
.end method

.method private clearDisplayList()V
    .locals 1

    .prologue
    .line 13540
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 13541
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->clear()V

    .line 13543
    :cond_0
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .locals 1
    .param p0, "curState"    # I
    .param p1, "newState"    # I

    .prologue
    .line 16743
    or-int v0, p0, p1

    return v0
.end method

.method protected static debugIndent(I)Ljava/lang/String;
    .locals 4
    .param p0, "depth"    # I

    .prologue
    const/16 v3, 0x20

    .line 16500
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16501
    .local v1, "spaces":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_0

    .line 16502
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16504
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7925
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7926
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1

    # getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1

    # getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v3

    invoke-interface {v3, p0, p1}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7939
    :cond_0
    :goto_0
    return v1

    .line 7932
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7936
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_2

    .line 7937
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_2
    move v1, v2

    .line 7939
    goto :goto_0
.end method

.method private drawAnimation(Landroid/view/ViewGroup;JLandroid/view/animation/Animation;Z)Z
    .locals 16
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "drawingTime"    # J
    .param p4, "a"    # Landroid/view/animation/Animation;
    .param p5, "scalingRequired"    # Z

    .prologue
    .line 14083
    move-object/from16 v0, p1

    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14084
    .local v10, "flags":I
    invoke-virtual/range {p4 .. p4}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v11

    .line 14085
    .local v11, "initialized":Z
    if-nez v11, :cond_1

    .line 14086
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 14087
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    .line 14088
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setListenerHandler(Landroid/os/Handler;)V

    .line 14089
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->onAnimationStart()V

    .line 14092
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v14

    .line 14093
    .local v14, "t":Landroid/view/animation/Transformation;
    const/high16 v3, 0x3f800000

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v14, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v13

    .line 14094
    .local v13, "more":Z
    if-eqz p5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    const/high16 v4, 0x3f800000

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 14095
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    if-nez v3, :cond_2

    .line 14096
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 14098
    :cond_2
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 14099
    .local v9, "invalidationTransform":Landroid/view/animation/Transformation;
    const/high16 v3, 0x3f800000

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    .line 14104
    :goto_0
    if-eqz v13, :cond_3

    .line 14105
    invoke-virtual/range {p4 .. p4}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v3

    if-nez v3, :cond_6

    .line 14106
    and-int/lit16 v3, v10, 0x90

    const/16 v4, 0x80

    if-ne v3, v4, :cond_5

    .line 14108
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14133
    :cond_3
    :goto_1
    return v13

    .line 14101
    .end local v9    # "invalidationTransform":Landroid/view/animation/Transformation;
    :cond_4
    move-object v9, v14

    .restart local v9    # "invalidationTransform":Landroid/view/animation/Transformation;
    goto :goto_0

    .line 14109
    :cond_5
    and-int/lit8 v3, v10, 0x4

    if-nez v3, :cond_3

    .line 14112
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 14113
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_1

    .line 14116
    :cond_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    if-nez v3, :cond_7

    .line 14117
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 14119
    :cond_7
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 14120
    .local v8, "region":Landroid/graphics/RectF;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mLeft:I

    sub-int v6, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mTop:I

    sub-int v7, v3, v7

    move-object/from16 v3, p4

    invoke-virtual/range {v3 .. v9}, Landroid/view/animation/Animation;->getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V

    .line 14125
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 14127
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    iget v4, v8, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    add-int v12, v3, v4

    .line 14128
    .local v12, "left":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    iget v4, v8, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int v15, v3, v4

    .line 14129
    .local v15, "top":I
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x3f000000

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v12

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x3f000000

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v15, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto/16 :goto_1
.end method

.method private static dumpFlag(Ljava/util/HashMap;Ljava/lang/String;I)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, "found":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 19696
    const-string v4, "%32s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x30

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 19697
    .local v0, "bits":Ljava/lang/String;
    const/16 v4, 0x5f

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 19698
    .local v3, "prefix":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v3, :cond_0

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19699
    .local v1, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19700
    .local v2, "output":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19701
    return-void

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "output":Ljava/lang/String;
    :cond_0
    move-object v4, p1

    .line 19698
    goto :goto_0
.end method

.method private static dumpFlags()V
    .locals 15

    .prologue
    .line 19666
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 19668
    .local v4, "found":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-class v13, Landroid/view/View;

    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_2

    aget-object v3, v1, v6

    .line 19669
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    .line 19670
    .local v10, "modifiers":I
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 19671
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 19672
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    .line 19673
    .local v11, "value":I
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13, v11}, Landroid/view/View;->dumpFlag(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 19668
    .end local v11    # "value":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 19674
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    const-class v14, [I

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 19675
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    move-object v0, v13

    check-cast v0, [I

    move-object v12, v0

    .line 19676
    .local v12, "values":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v13, v12

    if-ge v5, v13, :cond_0

    .line 19677
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aget v14, v12, v5

    invoke-static {v4, v13, v14}, Landroid/view/View;->dumpFlag(Ljava/util/HashMap;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19676
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 19682
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "i":I
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "modifiers":I
    .end local v12    # "values":[I
    :catch_0
    move-exception v2

    .line 19683
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 19686
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v1    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v6    # "i$":I
    .restart local v9    # "len$":I
    :cond_2
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 19687
    .local v8, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19688
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 19689
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 19690
    .local v7, "key":Ljava/lang/String;
    const-string v14, "View"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 19692
    .end local v7    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private findLabelForView(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "labeledId"    # I

    .prologue
    .line 5474
    iget-object v0, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    if-nez v0, :cond_0

    .line 5475
    new-instance v0, Landroid/view/View$MatchLabelForPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$MatchLabelForPredicate;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    .line 5477
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    # setter for: Landroid/view/View$MatchLabelForPredicate;->mLabeledId:I
    invoke-static {v0, p2}, Landroid/view/View$MatchLabelForPredicate;->access$802(Landroid/view/View$MatchLabelForPredicate;I)I

    .line 5478
    iget-object v0, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    .line 6809
    iget-object v1, p0, Landroid/view/View;->mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    if-nez v1, :cond_0

    .line 6810
    new-instance v1, Landroid/view/View$MatchIdPredicate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/View$MatchIdPredicate;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v1, p0, Landroid/view/View;->mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    .line 6812
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    iput p2, v1, Landroid/view/View$MatchIdPredicate;->mId:I

    .line 6813
    iget-object v1, p0, Landroid/view/View;->mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v0

    .line 6814
    .local v0, "result":Landroid/view/View;
    if-nez v0, :cond_1

    .line 6815
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find view with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6817
    :cond_1
    return-object v0
.end method

.method public static generateViewId()I
    .locals 3

    .prologue
    .line 18220
    .local v0, "newValue":I
    .local v1, "result":I
    :cond_0
    sget-object v2, Landroid/view/View;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 18222
    add-int/lit8 v0, v1, 0x1

    .line 18223
    const v2, 0xffffff

    if-le v0, v2, :cond_1

    const/4 v0, 0x1

    .line 18224
    :cond_1
    sget-object v2, Landroid/view/View;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18225
    return v1
.end method

.method public static getDefaultSize(II)I
    .locals 3
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 16799
    move v0, p0

    .line 16800
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 16801
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 16803
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 16812
    :goto_0
    return v0

    .line 16805
    :sswitch_0
    move v0, p0

    .line 16806
    goto :goto_0

    .line 16809
    :sswitch_1
    move v0, v2

    goto :goto_0

    .line 16803
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private getDisplayList(Landroid/view/DisplayList;Z)Landroid/view/DisplayList;
    .locals 13
    .param p1, "displayList"    # Landroid/view/DisplayList;
    .param p2, "isLayer"    # Z

    .prologue
    .line 13418
    invoke-virtual {p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13419
    const/4 v1, 0x0

    .line 13510
    :goto_0
    return-object v1

    .line 13422
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/DisplayList;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_e

    iget-boolean v1, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-eqz v1, :cond_e

    .line 13427
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/DisplayList;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    iget-boolean v1, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-nez v1, :cond_2

    .line 13429
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8020

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13430
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x600001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13431
    invoke-virtual {p0}, Landroid/view/View;->dispatchGetDisplayList()V

    move-object v1, p1

    .line 13433
    goto :goto_0

    .line 13436
    :cond_2
    if-nez p2, :cond_3

    .line 13439
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 13441
    :cond_3
    if-nez p1, :cond_4

    .line 13442
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/HardwareRenderer;->createDisplayList(Ljava/lang/String;)Landroid/view/DisplayList;

    move-result-object p1

    .line 13446
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 13449
    :cond_4
    const/4 v8, 0x0

    .line 13450
    .local v8, "caching":Z
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int v12, v1, v2

    .line 13451
    .local v12, "width":I
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int v9, v1, v2

    .line 13452
    .local v9, "height":I
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v11

    .line 13454
    .local v11, "layerType":I
    invoke-virtual {p1, v12, v9}, Landroid/view/DisplayList;->start(II)Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 13457
    .local v0, "canvas":Landroid/view/HardwareCanvas;
    if-nez p2, :cond_9

    if-eqz v11, :cond_9

    .line 13458
    const/4 v1, 0x2

    if-ne v11, v1, :cond_8

    .line 13459
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v10

    .line 13460
    .local v10, "layer":Landroid/view/HardwareLayer;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13461
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13467
    :goto_1
    const/4 v8, 0x1

    .line 13497
    .end local v10    # "layer":Landroid/view/HardwareLayer;
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/view/DisplayList;->end()V

    .line 13498
    invoke-virtual {p1, v8}, Landroid/view/DisplayList;->setCaching(Z)V

    .line 13499
    if-eqz p2, :cond_c

    .line 13500
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v12, v9}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .end local v0    # "canvas":Landroid/view/HardwareCanvas;
    .end local v8    # "caching":Z
    .end local v9    # "height":I
    .end local v11    # "layerType":I
    .end local v12    # "width":I
    :cond_6
    :goto_3
    move-object v1, p1

    .line 13510
    goto/16 :goto_0

    .line 13463
    .restart local v0    # "canvas":Landroid/view/HardwareCanvas;
    .restart local v8    # "caching":Z
    .restart local v9    # "height":I
    .restart local v10    # "layer":Landroid/view/HardwareLayer;
    .restart local v11    # "layerType":I
    .restart local v12    # "width":I
    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    const/16 v6, 0x14

    invoke-virtual/range {v0 .. v6}, Landroid/view/HardwareCanvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 13497
    .end local v10    # "layer":Landroid/view/HardwareLayer;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/view/DisplayList;->end()V

    .line 13498
    invoke-virtual {p1, v8}, Landroid/view/DisplayList;->setCaching(Z)V

    .line 13499
    if-eqz p2, :cond_d

    .line 13500
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v12, v9}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 13502
    :goto_4
    throw v1

    .line 13469
    :cond_8
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 13470
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 13471
    .local v7, "cache":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_5

    .line 13472
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/view/HardwareCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 13473
    const/4 v8, 0x1

    goto :goto_2

    .line 13478
    .end local v7    # "cache":Landroid/graphics/Bitmap;
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 13480
    iget v1, p0, Landroid/view/View;->mScrollX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 13481
    if-nez p2, :cond_a

    .line 13482
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8020

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13483
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x600001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13487
    :cond_a
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_b

    .line 13488
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13489
    iget-object v1, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v1}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 13490
    iget-object v1, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v1}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 13493
    :cond_b
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 13502
    :cond_c
    invoke-virtual {p0, p1}, Landroid/view/View;->setDisplayListProperties(Landroid/view/DisplayList;)V

    goto/16 :goto_3

    :cond_d
    invoke-virtual {p0, p1}, Landroid/view/View;->setDisplayListProperties(Landroid/view/DisplayList;)V

    goto :goto_4

    .line 13505
    .end local v0    # "canvas":Landroid/view/HardwareCanvas;
    .end local v8    # "caching":Z
    .end local v9    # "height":I
    .end local v11    # "layerType":I
    .end local v12    # "width":I
    :cond_e
    if-nez p2, :cond_6

    .line 13506
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8020

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13507
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x600001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_3
.end method

.method private getFinalAlpha()F
    .locals 2

    .prologue
    .line 10058
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    .line 10059
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, v1, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    mul-float/2addr v0, v1

    .line 10061
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000

    goto :goto_0
.end method

.method private getHardwareLayerDisplayList(Landroid/view/HardwareLayer;)Landroid/view/DisplayList;
    .locals 3
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 13520
    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/view/View;->getDisplayList(Landroid/view/DisplayList;Z)Landroid/view/DisplayList;

    move-result-object v0

    .line 13521
    .local v0, "displayList":Landroid/view/DisplayList;
    invoke-virtual {p1, v0}, Landroid/view/HardwareLayer;->setDisplayList(Landroid/view/DisplayList;)V

    .line 13522
    return-object v0
.end method

.method private getScrollCache()Landroid/view/View$ScrollabilityCache;
    .locals 1

    .prologue
    .line 4385
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 4386
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    return-object v0
.end method

.method private hasAncestorThatBlocksDescendantFocus()Z
    .locals 4

    .prologue
    .line 7159
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7160
    .local v0, "ancestor":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 7161
    check-cast v1, Landroid/view/ViewGroup;

    .line 7162
    .local v1, "vgAncestor":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x60000

    if-ne v2, v3, :cond_0

    .line 7163
    const/4 v2, 0x1

    .line 7168
    .end local v1    # "vgAncestor":Landroid/view/ViewGroup;
    :goto_1
    return v2

    .line 7165
    .restart local v1    # "vgAncestor":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7167
    goto :goto_0

    .line 7168
    .end local v1    # "vgAncestor":Landroid/view/ViewGroup;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hasListenersForAccessibility()Z
    .locals 2

    .prologue
    .line 7387
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 7388
    .local v0, "info":Landroid/view/View$ListenerInfo;
    iget-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-nez v1, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    if-nez v1, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    if-nez v1, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v1

    if-nez v1, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-nez v1, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasRtlSupport()Z
    .locals 1

    .prologue
    .line 12331
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private inLiveRegion()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 19645
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 19658
    :goto_0
    return v1

    .line 19649
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 19650
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_1
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 19651
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 19653
    goto :goto_0

    .line 19655
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 19658
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 17595
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 17596
    .local v0, "factory":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private initScrollCache()V
    .locals 2

    .prologue
    .line 4379
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    .line 4380
    new-instance v0, Landroid/view/View$ScrollabilityCache;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/View$ScrollabilityCache;-><init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4382
    :cond_0
    return-void
.end method

.method private initialAwakenScrollBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10798
    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDrawablesResolved()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000000

    .line 15213
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHoverable()Z
    .locals 5

    .prologue
    const/high16 v4, 0x200000

    const/4 v1, 0x0

    .line 8670
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 8671
    .local v0, "viewFlags":I
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 8675
    :cond_0
    :goto_0
    return v1

    :cond_1
    and-int/lit16 v2, v0, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_2

    and-int v2, v0, v4

    if-ne v2, v4, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isLayoutModeOptical(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 14898
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRtlCompatibilityMode()Z
    .locals 2

    .prologue
    .line 12339
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 12340
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static mergeDrawableStates([I[I)[I
    .locals 5
    .param p0, "baseState"    # [I
    .param p1, "additionalState"    # [I

    .prologue
    .line 15385
    array-length v0, p0

    .line 15386
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .line 15387
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    aget v2, p0, v1

    if-nez v2, :cond_0

    .line 15388
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 15390
    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    invoke-static {p1, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15391
    return-object p0
.end method

.method private needRtlPropertiesResolution()Z
    .locals 2

    .prologue
    const v1, 0x60010220

    .line 12348
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static nonzero(F)Z
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 9409
    const v0, -0x457ced91

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const v0, 0x3a83126f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postSendViewScrolledAccessibilityEventCallback()V
    .locals 3

    .prologue
    .line 11501
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-nez v0, :cond_0

    .line 11502
    new-instance v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    .line 11504
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    iget-boolean v0, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    if-nez v0, :cond_1

    .line 11505
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 11506
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11509
    :cond_1
    return-void
.end method

.method private static printFlags(I)Ljava/lang/String;
    .locals 4
    .param p0, "flags"    # I

    .prologue
    .line 14797
    const-string v1, ""

    .line 14798
    .local v1, "output":Ljava/lang/String;
    const/4 v0, 0x0

    .line 14799
    .local v0, "numFlags":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 14800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAKES_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14801
    add-int/lit8 v0, v0, 0x1

    .line 14804
    :cond_0
    and-int/lit8 v2, p0, 0xc

    sparse-switch v2, :sswitch_data_0

    .line 14822
    :goto_0
    return-object v1

    .line 14806
    :sswitch_0
    if-lez v0, :cond_1

    .line 14807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14809
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INVISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14811
    goto :goto_0

    .line 14813
    :sswitch_1
    if-lez v0, :cond_2

    .line 14814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14816
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14818
    goto :goto_0

    .line 14804
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private static printPrivateFlags(I)Ljava/lang/String;
    .locals 4
    .param p0, "privateFlags"    # I

    .prologue
    .line 14833
    const-string v1, ""

    .line 14834
    .local v1, "output":Ljava/lang/String;
    const/4 v0, 0x0

    .line 14836
    .local v0, "numFlags":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 14837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WANTS_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14838
    add-int/lit8 v0, v0, 0x1

    .line 14841
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 14842
    if-lez v0, :cond_1

    .line 14843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14845
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FOCUSED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14846
    add-int/lit8 v0, v0, 0x1

    .line 14849
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 14850
    if-lez v0, :cond_3

    .line 14851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14853
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14854
    add-int/lit8 v0, v0, 0x1

    .line 14857
    :cond_4
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 14858
    if-lez v0, :cond_5

    .line 14859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14861
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IS_ROOT_NAMESPACE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14862
    add-int/lit8 v0, v0, 0x1

    .line 14865
    :cond_6
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_8

    .line 14866
    if-lez v0, :cond_7

    .line 14867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14869
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HAS_BOUNDS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14870
    add-int/lit8 v0, v0, 0x1

    .line 14873
    :cond_8
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_a

    .line 14874
    if-lez v0, :cond_9

    .line 14875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14877
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DRAWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14880
    :cond_a
    return-object v1
.end method

.method private removeLongPressCallback()V
    .locals 1

    .prologue
    .line 8900
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 8901
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8903
    :cond_0
    return-void
.end method

.method private removePerformClickCallback()V
    .locals 1

    .prologue
    .line 8909
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-eqz v0, :cond_0

    .line 8910
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8912
    :cond_0
    return-void
.end method

.method private removeSendViewScrolledAccessibilityEventCallback()V
    .locals 2

    .prologue
    .line 8956
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-eqz v0, :cond_0

    .line 8957
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8958
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 8960
    :cond_0
    return-void
.end method

.method private removeTapCallback()V
    .locals 2

    .prologue
    .line 8928
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-eqz v0, :cond_0

    .line 8929
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8930
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8932
    :cond_0
    return-void
.end method

.method private removeUnsetPressCallback()V
    .locals 1

    .prologue
    .line 8918
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-eqz v0, :cond_0

    .line 8919
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 8920
    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8922
    :cond_0
    return-void
.end method

.method private requestFocusNoSearch(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v3, 0x40000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7114
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_1

    .line 7131
    :cond_0
    :goto_0
    return v0

    .line 7120
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v3

    if-ne v3, v2, :cond_0

    .line 7126
    :cond_2
    invoke-direct {p0}, Landroid/view/View;->hasAncestorThatBlocksDescendantFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7130
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    move v0, v1

    .line 7131
    goto :goto_0
.end method

.method private resetDisplayList()V
    .locals 1

    .prologue
    .line 13546
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 13547
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->reset()V

    .line 13549
    :cond_0
    return-void
.end method

.method private resetPressedState()V
    .locals 2

    .prologue
    .line 5718
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 5729
    :cond_0
    :goto_0
    return-void

    .line 5722
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5723
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5725
    iget-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v0, :cond_0

    .line 5726
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto :goto_0
.end method

.method public static resolveSize(II)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 16751
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static resolveSizeAndState(III)I
    .locals 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I

    .prologue
    .line 16768
    move v0, p0

    .line 16769
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 16770
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 16771
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 16786
    :goto_0
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 16773
    :sswitch_0
    move v0, p0

    .line 16774
    goto :goto_0

    .line 16776
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 16777
    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    goto :goto_0

    .line 16779
    :cond_0
    move v0, p0

    .line 16781
    goto :goto_0

    .line 16783
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 16771
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private sendAccessibilityHoverEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 7009
    move-object v1, p0

    .line 7011
    .local v1, "source":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->includeForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7012
    invoke-virtual {v1, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 7019
    :cond_0
    return-void

    .line 7015
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7016
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 7017
    check-cast v1, Landroid/view/View;

    goto :goto_0
.end method

.method private sendViewTextTraversedAtGranularityEvent(IIII)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "granularity"    # I
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I

    .prologue
    .line 7662
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v1, :cond_0

    .line 7674
    :goto_0
    return-void

    .line 7665
    :cond_0
    const/high16 v1, 0x20000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 7667
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7668
    invoke-virtual {p0, v0}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7669
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 7670
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 7671
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 7672
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 7673
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0
.end method

.method private setKeyedTag(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 16406
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 16407
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    .line 16410
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16411
    return-void
.end method

.method private setOpticalFrame(IIII)Z
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 14902
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 14904
    .local v1, "parentInsets":Landroid/graphics/Insets;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 14905
    .local v0, "childInsets":Landroid/graphics/Insets;
    iget v2, v1, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, p1

    iget v3, v0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Insets;->top:I

    add-int/2addr v3, p2

    iget v4, v0, Landroid/graphics/Insets;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, p3

    iget v5, v0, Landroid/graphics/Insets;->right:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Insets;->top:I

    add-int/2addr v5, p4

    iget v6, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->setFrame(IIII)Z

    move-result v2

    return v2

    .line 14902
    .end local v0    # "childInsets":Landroid/graphics/Insets;
    .end local v1    # "parentInsets":Landroid/graphics/Insets;
    :cond_0
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_0
.end method

.method private sizeChange(IIII)V
    .locals 1
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 15063
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 15064
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_0

    .line 15065
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setRight(I)V

    .line 15066
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setBottom(I)V

    .line 15068
    :cond_0
    return-void
.end method

.method private skipInvalidate()Z
    .locals 1

    .prologue
    .line 10927
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->isViewTransitioning(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private transformMotionEventToGlobal(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 16022
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_0

    .line 16023
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 16026
    :cond_0
    iget v3, p0, Landroid/view/View;->mLeft:I

    int-to-float v3, v3

    iget v4, p0, Landroid/view/View;->mTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 16028
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 16029
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 16030
    check-cast v1, Landroid/view/View;

    .line 16031
    .local v1, "vp":Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mScrollX:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, v1, Landroid/view/View;->mScrollY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 16032
    invoke-direct {v1, p1}, Landroid/view/View;->transformMotionEventToGlobal(Landroid/view/MotionEvent;)V

    .line 16037
    .end local v1    # "vp":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 16033
    :cond_2
    instance-of v3, v0, Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 16034
    check-cast v2, Landroid/view/ViewRootImpl;

    .line 16035
    .local v2, "vr":Landroid/view/ViewRootImpl;
    const/4 v3, 0x0

    iget v4, v2, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private transformMotionEventToLocal(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 15999
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 16000
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 16001
    check-cast v1, Landroid/view/View;

    .line 16002
    .local v1, "vp":Landroid/view/View;
    invoke-direct {v1, p1}, Landroid/view/View;->transformMotionEventToLocal(Landroid/view/MotionEvent;)V

    .line 16003
    iget v3, v1, Landroid/view/View;->mScrollX:I

    int-to-float v3, v3

    iget v4, v1, Landroid/view/View;->mScrollY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 16009
    .end local v1    # "vp":Landroid/view/View;
    :cond_0
    :goto_0
    iget v3, p0, Landroid/view/View;->mLeft:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Landroid/view/View;->mTop:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 16011
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_1

    .line 16012
    invoke-virtual {p0}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 16014
    :cond_1
    return-void

    .line 16004
    :cond_2
    instance-of v3, v0, Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 16005
    check-cast v2, Landroid/view/ViewRootImpl;

    .line 16006
    .local v2, "vr":Landroid/view/ViewRootImpl;
    const/4 v3, 0x0

    iget v4, v2, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private traverseAtGranularity(IZZ)Z
    .locals 10
    .param p1, "granularity"    # I
    .param p2, "forward"    # Z
    .param p3, "extendSelection"    # Z

    .prologue
    .line 7573
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v8

    .line 7574
    .local v8, "text":Ljava/lang/CharSequence;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 7575
    :cond_0
    const/4 v9, 0x0

    .line 7606
    :goto_0
    return v9

    .line 7577
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v2

    .line 7578
    .local v2, "iterator":Landroid/view/AccessibilityIterators$TextSegmentIterator;
    if-nez v2, :cond_2

    .line 7579
    const/4 v9, 0x0

    goto :goto_0

    .line 7581
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result v1

    .line 7582
    .local v1, "current":I
    const/4 v9, -0x1

    if-ne v1, v9, :cond_3

    .line 7583
    if-eqz p2, :cond_4

    const/4 v1, 0x0

    .line 7585
    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    invoke-interface {v2, v1}, Landroid/view/AccessibilityIterators$TextSegmentIterator;->following(I)[I

    move-result-object v3

    .line 7586
    .local v3, "range":[I
    :goto_2
    if-nez v3, :cond_6

    .line 7587
    const/4 v9, 0x0

    goto :goto_0

    .line 7583
    .end local v3    # "range":[I
    :cond_4
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_1

    .line 7585
    :cond_5
    invoke-interface {v2, v1}, Landroid/view/AccessibilityIterators$TextSegmentIterator;->preceding(I)[I

    move-result-object v3

    goto :goto_2

    .line 7589
    .restart local v3    # "range":[I
    :cond_6
    const/4 v9, 0x0

    aget v5, v3, v9

    .line 7590
    .local v5, "segmentStart":I
    const/4 v9, 0x1

    aget v4, v3, v9

    .line 7593
    .local v4, "segmentEnd":I
    if-eqz p3, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->isAccessibilitySelectionExtendable()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 7594
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v7

    .line 7595
    .local v7, "selectionStart":I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_7

    .line 7596
    if-eqz p2, :cond_8

    move v7, v5

    .line 7598
    :cond_7
    :goto_3
    if-eqz p2, :cond_9

    move v6, v4

    .line 7602
    .local v6, "selectionEnd":I
    :goto_4
    invoke-virtual {p0, v7, v6}, Landroid/view/View;->setAccessibilitySelection(II)V

    .line 7603
    if-eqz p2, :cond_c

    const/16 v0, 0x100

    .line 7605
    .local v0, "action":I
    :goto_5
    invoke-direct {p0, v0, p1, v5, v4}, Landroid/view/View;->sendViewTextTraversedAtGranularityEvent(IIII)V

    .line 7606
    const/4 v9, 0x1

    goto :goto_0

    .end local v0    # "action":I
    .end local v6    # "selectionEnd":I
    :cond_8
    move v7, v4

    .line 7596
    goto :goto_3

    :cond_9
    move v6, v5

    .line 7598
    goto :goto_4

    .line 7600
    .end local v7    # "selectionStart":I
    :cond_a
    if-eqz p2, :cond_b

    move v6, v4

    .restart local v6    # "selectionEnd":I
    :goto_6
    move v7, v6

    .restart local v7    # "selectionStart":I
    goto :goto_4

    .end local v6    # "selectionEnd":I
    .end local v7    # "selectionStart":I
    :cond_b
    move v6, v5

    goto :goto_6

    .line 7603
    .restart local v6    # "selectionEnd":I
    .restart local v7    # "selectionStart":I
    :cond_c
    const/16 v0, 0x200

    goto :goto_5
.end method

.method private updateMatrix()V
    .locals 6

    .prologue
    const/high16 v3, 0x40000000

    .line 9436
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9437
    .local v0, "info":Landroid/view/View$TransformationInfo;
    if-nez v0, :cond_1

    .line 9477
    :cond_0
    :goto_0
    return-void

    .line 9440
    :cond_1
    iget-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    if-eqz v1, :cond_0

    .line 9445
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    .line 9446
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    # getter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1700(Landroid/view/View$TransformationInfo;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    # getter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 9447
    :cond_2
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    # setter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1702(Landroid/view/View$TransformationInfo;I)I

    .line 9448
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    # setter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1802(Landroid/view/View$TransformationInfo;I)I

    .line 9449
    # getter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1700(Landroid/view/View$TransformationInfo;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 9450
    # getter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 9453
    :cond_3
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 9454
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    invoke-static {v1}, Landroid/view/View;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    invoke-static {v1}, Landroid/view/View;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_4

    .line 9455
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 9456
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 9457
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 9473
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9474
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    # setter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1602(Landroid/view/View$TransformationInfo;Z)Z

    .line 9475
    const/4 v1, 0x1

    # setter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$2102(Landroid/view/View$TransformationInfo;Z)Z

    goto/16 :goto_0

    .line 9459
    :cond_4
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    if-nez v1, :cond_5

    .line 9460
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1902(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 9461
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 9463
    :cond_5
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 9464
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 9465
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    neg-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 9466
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    # getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 9467
    # getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    neg-float v2, v2

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 9468
    # getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9470
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    # getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 9471
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    goto/16 :goto_1
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7342
    .local p1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7343
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7345
    :cond_0
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;I)V
    .locals 1
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 6842
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 6843
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 6862
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    .line 6873
    :cond_0
    :goto_0
    return-void

    .line 6865
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6868
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6872
    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnAttachStateChangeListener;

    .prologue
    .line 4469
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 4470
    .local v0, "li":Landroid/view/View$ListenerInfo;
    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4471
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    # setter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$102(Landroid/view/View$ListenerInfo;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4474
    :cond_0
    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4475
    return-void
.end method

.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 4436
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 4437
    .local v0, "li":Landroid/view/View$ListenerInfo;
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$002(Landroid/view/View$ListenerInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 4440
    :cond_0
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4441
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4443
    :cond_1
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/high16 v3, 0x200000

    .line 6925
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 6927
    .local v0, "viewFlags":I
    and-int/lit16 v1, v0, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_0

    and-int v1, v0, v3

    if-ne v1, v3, :cond_1

    :cond_0
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_1

    .line 6929
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6931
    :cond_1
    return-void
.end method

.method public animate()Landroid/view/ViewPropertyAnimator;
    .locals 1

    .prologue
    .line 18569
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    .line 18570
    new-instance v0, Landroid/view/ViewPropertyAnimator;

    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 18572
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 5024
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 5025
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 5027
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5028
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5029
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5030
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 5032
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method public applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V
    .locals 15
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "region"    # Landroid/graphics/Region;

    .prologue
    .line 17540
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    .line 17541
    .local v1, "r":Landroid/graphics/Region;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 17542
    .local v13, "db":Landroid/graphics/Rect;
    iget-object v12, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 17543
    .local v12, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_4

    if-eqz v12, :cond_4

    .line 17544
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v9, v2, v3

    .line 17545
    .local v9, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v2, v3

    .line 17546
    .local v5, "h":I
    iget v2, v13, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_0

    .line 17548
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/Rect;->left:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 17550
    :cond_0
    iget v2, v13, Landroid/graphics/Rect;->right:I

    if-ge v2, v9, :cond_1

    .line 17552
    iget v2, v13, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x0

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 17554
    :cond_1
    iget v2, v13, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_2

    .line 17556
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v10, v13, Landroid/graphics/Rect;->top:I

    sget-object v11, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 17558
    :cond_2
    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v5, :cond_3

    .line 17560
    const/4 v2, 0x0

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 17562
    :cond_3
    iget-object v14, v12, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 17563
    .local v14, "location":[I
    invoke-virtual {p0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 17564
    const/4 v2, 0x0

    aget v2, v14, v2

    const/4 v3, 0x1

    aget v3, v14, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    .line 17565
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 17569
    .end local v5    # "h":I
    .end local v9    # "w":I
    .end local v14    # "location":[I
    :goto_0
    return-void

    .line 17567
    :cond_4
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method assignParent(Landroid/view/ViewParent;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewParent;

    .prologue
    .line 12216
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    .line 12217
    iput-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 12224
    :goto_0
    return-void

    .line 12218
    :cond_0
    if-nez p1, :cond_1

    .line 12219
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 12221
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being added, but"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " it already has a parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected awakenScrollBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10785
    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected awakenScrollBars(I)Z
    .locals 1
    .param p1, "startDelay"    # I

    .prologue
    .line 10837
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 10
    .param p1, "startDelay"    # I
    .param p2, "invalidate"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10879
    iget-object v3, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 10881
    .local v3, "scrollCache":Landroid/view/View$ScrollabilityCache;
    if-eqz v3, :cond_0

    iget-boolean v6, v3, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-nez v6, :cond_1

    .line 10919
    :cond_0
    :goto_0
    return v4

    .line 10885
    :cond_1
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v6, :cond_2

    .line 10886
    new-instance v6, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v6}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 10889
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 10891
    :cond_3
    if-eqz p2, :cond_4

    .line 10893
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 10896
    :cond_4
    iget v4, v3, Landroid/view/View$ScrollabilityCache;->state:I

    if-nez v4, :cond_5

    .line 10900
    const/16 v0, 0x2ee

    .line 10901
    .local v0, "KEY_REPEAT_FIRST_DELAY":I
    const/16 v4, 0x2ee

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 10906
    .end local v0    # "KEY_REPEAT_FIRST_DELAY":I
    :cond_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    int-to-long v8, p1

    add-long v1, v6, v8

    .line 10907
    .local v1, "fadeStartTime":J
    iput-wide v1, v3, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    .line 10908
    iput v5, v3, Landroid/view/View$ScrollabilityCache;->state:I

    .line 10911
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_6

    .line 10912
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10913
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_6
    move v4, v5

    .line 10916
    goto :goto_0
.end method

.method public bringToFront()V
    .locals 1

    .prologue
    .line 9159
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 9160
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 9162
    :cond_0
    return-void
.end method

.method public buildDrawingCache()V
    .locals 1

    .prologue
    .line 13653
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 13654
    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 23
    .param p1, "autoScale"    # Z

    .prologue
    .line 13680
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, 0x8000

    and-int v20, v20, v21

    if-eqz v20, :cond_0

    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    .line 13682
    :cond_0
    :goto_0
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mCachingFailed:Z

    .line 13684
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v21, v0

    sub-int v19, v20, v21

    .line 13685
    .local v19, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v21, v0

    sub-int v10, v20, v21

    .line 13687
    .local v10, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13688
    .local v2, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v2, :cond_7

    iget-boolean v0, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    const/16 v17, 0x1

    .line 13690
    .local v17, "scalingRequired":Z
    :goto_1
    if-eqz p1, :cond_1

    if-eqz v17, :cond_1

    .line 13691
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x3f000000

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 13692
    int-to-float v0, v10

    move/from16 v20, v0

    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x3f000000

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v10, v0

    .line 13695
    :cond_1
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 13696
    .local v6, "drawingCacheBackgroundColor":I
    if-nez v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v20

    if-eqz v20, :cond_8

    :cond_2
    const/4 v11, 0x1

    .line 13697
    .local v11, "opaque":Z
    :goto_2
    if-eqz v2, :cond_9

    iget-boolean v0, v2, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    const/16 v18, 0x1

    .line 13699
    .local v18, "use32BitCache":Z
    :goto_3
    mul-int v21, v19, v10

    if-eqz v11, :cond_a

    if-nez v18, :cond_a

    const/16 v20, 0x2

    :goto_4
    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v12, v0

    .line 13700
    .local v12, "projectedBitmapSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v7, v0

    .line 13702
    .local v7, "drawingCacheSize":J
    if-lez v19, :cond_3

    if-lez v10, :cond_3

    cmp-long v20, v12, v7

    if-lez v20, :cond_b

    .line 13703
    :cond_3
    if-lez v19, :cond_4

    if-lez v10, :cond_4

    .line 13704
    const-string v20, "View"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "View too large to fit into drawing cache, needs "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes, only "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " available"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13708
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 13709
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mCachingFailed:Z

    .line 13820
    .end local v2    # "attachInfo":Landroid/view/View$AttachInfo;
    .end local v6    # "drawingCacheBackgroundColor":I
    .end local v7    # "drawingCacheSize":J
    .end local v10    # "height":I
    .end local v11    # "opaque":Z
    .end local v12    # "projectedBitmapSize":J
    .end local v17    # "scalingRequired":Z
    .end local v18    # "use32BitCache":Z
    .end local v19    # "width":I
    :cond_5
    :goto_5
    return-void

    .line 13680
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    goto/16 :goto_0

    .line 13688
    .restart local v2    # "attachInfo":Landroid/view/View$AttachInfo;
    .restart local v10    # "height":I
    .restart local v19    # "width":I
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 13696
    .restart local v6    # "drawingCacheBackgroundColor":I
    .restart local v17    # "scalingRequired":Z
    :cond_8
    const/4 v11, 0x0

    goto :goto_2

    .line 13697
    .restart local v11    # "opaque":Z
    :cond_9
    const/16 v18, 0x0

    goto :goto_3

    .line 13699
    .restart local v18    # "use32BitCache":Z
    :cond_a
    const/16 v20, 0x4

    goto :goto_4

    .line 13713
    .restart local v7    # "drawingCacheSize":J
    .restart local v12    # "projectedBitmapSize":J
    :cond_b
    const/4 v5, 0x1

    .line 13714
    .local v5, "clear":Z
    if-eqz p1, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 13716
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :goto_6
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v10, :cond_f

    .line 13718
    :cond_c
    if-nez v11, :cond_17

    .line 13721
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x180000

    and-int v20, v20, v21

    .line 13726
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 13736
    .local v14, "quality":Landroid/graphics/Bitmap$Config;
    :goto_7
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 13739
    :cond_d
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1, v10, v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 13741
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 13742
    if-eqz p1, :cond_19

    .line 13743
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 13747
    :goto_8
    if-eqz v11, :cond_e

    if-eqz v18, :cond_e

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13761
    :cond_e
    if-eqz v6, :cond_1b

    const/4 v5, 0x1

    .line 13765
    .end local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_f
    :goto_9
    if-eqz v2, :cond_1c

    .line 13766
    iget-object v4, v2, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13767
    .local v4, "canvas":Landroid/graphics/Canvas;
    if-nez v4, :cond_10

    .line 13768
    new-instance v4, Landroid/graphics/Canvas;

    .end local v4    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 13770
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    :cond_10
    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13775
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v2, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13781
    :goto_a
    if-eqz v5, :cond_11

    .line 13782
    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 13785
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 13786
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 13788
    .local v15, "restoreCount":I
    if-eqz p1, :cond_12

    if-eqz v17, :cond_12

    .line 13789
    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v16, v0

    .line 13790
    .local v16, "scale":F
    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 13793
    .end local v16    # "scale":F
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13795
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 13796
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLayerType:I

    move/from16 v20, v0

    if-eqz v20, :cond_14

    .line 13798
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, 0x8000

    or-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 13802
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    const/16 v21, 0x80

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    .line 13803
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x600001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 13804
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13805
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_15

    .line 13806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 13812
    :cond_15
    :goto_b
    invoke-virtual {v4, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13813
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13815
    if-eqz v2, :cond_5

    .line 13817
    iput-object v4, v2, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_5

    .line 13714
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v15    # "restoreCount":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    .line 13732
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_17
    if-eqz v18, :cond_18

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .restart local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :goto_c
    goto/16 :goto_7

    .end local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_18
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_c

    .line 13745
    .restart local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_19
    :try_start_1
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 13748
    :catch_0
    move-exception v9

    .line 13752
    .local v9, "e":Ljava/lang/OutOfMemoryError;
    if-eqz p1, :cond_1a

    .line 13753
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 13757
    :goto_d
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mCachingFailed:Z

    goto/16 :goto_5

    .line 13755
    :cond_1a
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_d

    .line 13761
    .end local v9    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 13778
    .end local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_1c
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    goto/16 :goto_a

    .line 13809
    .restart local v15    # "restoreCount":I
    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b
.end method

.method public buildLayer()V
    .locals 3

    .prologue
    .line 13165
    iget v1, p0, Landroid/view/View;->mLayerType:I

    if-nez v1, :cond_1

    .line 13193
    :cond_0
    :goto_0
    return-void

    .line 13167
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13168
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-nez v0, :cond_2

    .line 13169
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This view must be attached to a window first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13172
    :cond_2
    iget v1, p0, Landroid/view/View;->mLayerType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 13190
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    goto :goto_0

    .line 13174
    :pswitch_1
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v1}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v1}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13177
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    .line 13184
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->hasOnPreDrawListeners()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13185
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->dispatchFlushHardwareLayerUpdates()V

    goto :goto_0

    .line 13172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callOnClick()Z
    .locals 2

    .prologue
    .line 4585
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4586
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 4587
    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4588
    const/4 v1, 0x1

    .line 4590
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method canAcceptDrag()Z
    .locals 1

    .prologue
    .line 17510
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canHaveDisplayList()Z
    .locals 1

    .prologue
    .line 13390
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canResolveLayoutDirection()Z
    .locals 4

    .prologue
    .line 12426
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 12439
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 12428
    :pswitch_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 12430
    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->canResolveLayoutDirection()Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 12431
    :catch_0
    move-exception v0

    .line 12432
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12436
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 12426
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public canResolveTextAlignment()Z
    .locals 4

    .prologue
    .line 18166
    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 18179
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 18168
    :pswitch_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 18170
    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->canResolveTextAlignment()Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 18171
    :catch_0
    move-exception v0

    .line 18172
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18176
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 18166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public canResolveTextDirection()Z
    .locals 4

    .prologue
    .line 17931
    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 17944
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 17933
    :pswitch_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 17935
    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->canResolveTextDirection()Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 17936
    :catch_0
    move-exception v0

    .line 17937
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17941
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 17931
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 11999
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    .line 12000
    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 12001
    .local v1, "range":I
    if-nez v1, :cond_1

    move v2, v3

    .line 12005
    :cond_0
    :goto_0
    return v2

    .line 12002
    :cond_1
    if-gez p1, :cond_2

    .line 12003
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 12005
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public canScrollVertically(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 12016
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    .line 12017
    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 12018
    .local v1, "range":I
    if-nez v1, :cond_1

    move v2, v3

    .line 12022
    :cond_0
    :goto_0
    return v2

    .line 12019
    :cond_1
    if-gez p1, :cond_2

    .line 12020
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 12022
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 0

    .prologue
    .line 8941
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8948
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 8949
    return-void
.end method

.method public final cancelPendingInputEvents()V
    .locals 0

    .prologue
    .line 12799
    invoke-virtual {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 12800
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8459
    const/4 v0, 0x0

    return v0
.end method

.method public clearAccessibilityFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6987
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 6990
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 6991
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_0

    .line 6992
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .line 6993
    .local v0, "focusHost":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6994
    invoke-virtual {v1, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6997
    .end local v0    # "focusHost":Landroid/view/View;
    :cond_0
    return-void
.end method

.method clearAccessibilityFocusNoCallbacks()V
    .locals 2

    .prologue
    .line 7031
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 7032
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 7033
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7034
    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 7036
    :cond_0
    return-void
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 16931
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 16932
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 16934
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 16935
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 16936
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 4839
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->clearFocusInternal(ZZ)V

    .line 4840
    return-void
.end method

.method clearFocusInternal(ZZ)V
    .locals 2
    .param p1, "propagate"    # Z
    .param p2, "refocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4852
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 4853
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4855
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4856
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 4859
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4861
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4863
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->rootViewRequestFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4864
    :cond_1
    invoke-virtual {p0, p0}, Landroid/view/View;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 4867
    :cond_2
    return-void
.end method

.method protected computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "inoutInsets"    # Landroid/graphics/Rect;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 6062
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    and-int/lit16 v2, v2, 0x600

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    if-nez v2, :cond_1

    .line 6066
    :cond_0
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6067
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 6068
    const/4 v1, 0x1

    .line 6078
    :goto_0
    return v1

    .line 6072
    :cond_1
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    .line 6073
    .local v0, "overscan":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6074
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 6075
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 6076
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 6077
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 11928
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 11907
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 11886
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeOpaqueFlags()V
    .locals 4

    .prologue
    const/high16 v3, 0x3000000

    .line 11182
    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 11183
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11188
    :goto_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11189
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_0

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    :cond_0
    and-int v1, v0, v3

    if-eqz v1, :cond_1

    and-int v1, v0, v3

    const/high16 v2, 0x2000000

    if-ne v1, v2, :cond_3

    .line 11192
    :cond_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11196
    :goto_1
    return-void

    .line 11185
    .end local v0    # "flags":I
    :cond_2
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0

    .line 11194
    .restart local v0    # "flags":I
    :cond_3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_1
.end method

.method computeOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .prologue
    .line 15796
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 11518
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 11989
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 11968
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 11947
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 5261
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 5262
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/view/View$AccessibilityDelegate;->createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 5264
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->createAccessibilityNodeInfoInternal()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0
.end method

.method createAccessibilityNodeInfoInternal()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .prologue
    .line 5272
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 5273
    .local v1, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v1, :cond_0

    .line 5274
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 5278
    :goto_0
    return-object v0

    .line 5276
    :cond_0
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 5277
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 8473
    invoke-virtual {p0}, Landroid/view/View;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .local v1, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v2, p1

    .line 8477
    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 8479
    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 8480
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 8481
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_0

    .line 8482
    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v2, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    move-object v2, p1

    .line 8487
    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 8489
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    .line 8490
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 8492
    :cond_1
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "quality"    # Landroid/graphics/Bitmap$Config;
    .param p2, "backgroundColor"    # I
    .param p3, "skipChildren"    # Z

    .prologue
    .line 13827
    iget v9, p0, Landroid/view/View;->mRight:I

    iget v10, p0, Landroid/view/View;->mLeft:I

    sub-int v8, v9, v10

    .line 13828
    .local v8, "width":I
    iget v9, p0, Landroid/view/View;->mBottom:I

    iget v10, p0, Landroid/view/View;->mTop:I

    sub-int v4, v9, v10

    .line 13830
    .local v4, "height":I
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13831
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    iget v7, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 13832
    .local v7, "scale":F
    :goto_0
    int-to-float v9, v8

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    float-to-int v8, v9

    .line 13833
    int-to-float v9, v4

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    float-to-int v4, v9

    .line 13835
    iget-object v9, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    if-lez v8, :cond_1

    .end local v8    # "width":I
    :goto_1
    if-lez v4, :cond_2

    .end local v4    # "height":I
    :goto_2
    invoke-static {v9, v8, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 13837
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    .line 13838
    new-instance v9, Ljava/lang/OutOfMemoryError;

    invoke-direct {v9}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v9

    .line 13831
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "scale":F
    .restart local v4    # "height":I
    .restart local v8    # "width":I
    :cond_0
    const/high16 v7, 0x3f800000

    goto :goto_0

    .line 13835
    .restart local v7    # "scale":F
    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    .end local v8    # "width":I
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 13841
    .end local v4    # "height":I
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 13842
    .local v5, "resources":Landroid/content/res/Resources;
    if-eqz v5, :cond_4

    .line 13843
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 13847
    :cond_4
    if-eqz v0, :cond_9

    .line 13848
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13849
    .local v2, "canvas":Landroid/graphics/Canvas;
    if-nez v2, :cond_5

    .line 13850
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 13852
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_5
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13857
    const/4 v9, 0x0

    iput-object v9, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13863
    :goto_3
    const/high16 v9, -0x1000000

    and-int/2addr v9, p2

    if-eqz v9, :cond_6

    .line 13864
    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 13867
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 13868
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 13869
    .local v6, "restoreCount":I
    invoke-virtual {v2, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 13870
    iget v9, p0, Landroid/view/View;->mScrollX:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Landroid/view/View;->mScrollY:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13873
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13874
    .local v3, "flags":I
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    const v10, -0x600001

    and-int/2addr v9, v10

    iput v9, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13877
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x80

    const/16 v10, 0x80

    if-ne v9, v10, :cond_a

    .line 13878
    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13879
    iget-object v9, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v9}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 13880
    iget-object v9, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v9}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 13886
    :cond_7
    :goto_4
    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13888
    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13889
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13891
    if-eqz v0, :cond_8

    .line 13893
    iput-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13896
    :cond_8
    return-object v1

    .line 13860
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "flags":I
    .end local v6    # "restoreCount":I
    :cond_9
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    goto :goto_3

    .line 13883
    .restart local v3    # "flags":I
    .restart local v6    # "restoreCount":I
    :cond_a
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 16420
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->debug(I)V

    .line 16421
    return-void
.end method

.method protected debug(I)V
    .locals 5
    .param p1, "depth"    # I

    .prologue
    .line 16433
    add-int/lit8 v3, p1, -0x1

    invoke-static {v3}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 16435
    .local v1, "output":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16436
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 16437
    .local v0, "id":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 16438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16440
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 16441
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 16442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16444
    :cond_1
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16446
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 16447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FOCUSED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16448
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16451
    :cond_2
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 16452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "frame={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} scroll={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16455
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16457
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eqz v3, :cond_4

    .line 16459
    :cond_3
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 16460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "padding={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16462
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16465
    :cond_4
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 16466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMeasureWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMeasureHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16468
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16470
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 16471
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v3, :cond_5

    .line 16472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BAD! no layout params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16476
    :goto_0
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16478
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 16479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "flags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mViewFlags:I

    invoke-static {v4}, Landroid/view/View;->printFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16482
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16484
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 16485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "privateFlags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-static {v4}, Landroid/view/View;->printPrivateFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16488
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16489
    return-void

    .line 16474
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public destroyDrawingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13610
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 13611
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 13612
    iput-object v1, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 13614
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 13615
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 13616
    iput-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    .line 13618
    :cond_1
    return-void
.end method

.method protected destroyHardwareResources()V
    .locals 1

    .prologue
    .line 13297
    invoke-direct {p0}, Landroid/view/View;->resetDisplayList()V

    .line 13298
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->destroyLayer(Z)Z

    .line 13299
    return-void
.end method

.method destroyLayer(Z)Z
    .locals 4
    .param p1, "valid"    # Z

    .prologue
    const/4 v1, 0x1

    .line 13267
    iget-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-eqz v2, :cond_2

    .line 13268
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13269
    .local v0, "info":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13273
    :cond_0
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v2, v3}, Landroid/view/HardwareRenderer;->cancelLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 13274
    iget-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v2}, Landroid/view/HardwareLayer;->destroy()V

    .line 13275
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 13277
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 13278
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 13282
    .end local v0    # "info":Landroid/view/View$AttachInfo;
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 7
    .param p1, "info"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    const/4 v3, 0x0

    .line 12700
    iput-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12701
    iget-object v5, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v5, :cond_0

    .line 12702
    iget-object v5, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v5}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/ViewGroup;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 12704
    :cond_0
    iget v5, p0, Landroid/view/View;->mWindowAttachCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/view/View;->mWindowAttachCount:I

    .line 12706
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12707
    iget-object v5, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v5, :cond_1

    .line 12708
    iget-object v5, p1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v6, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->merge(Landroid/view/ViewTreeObserver;)V

    .line 12709
    iput-object v3, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 12711
    :cond_1
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 12712
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12713
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12715
    :cond_2
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p0, v5, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 12716
    invoke-virtual {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 12718
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 12719
    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_3

    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .line 12721
    .local v3, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 12726
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnAttachStateChangeListener;

    .line 12727
    .local v2, "listener":Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v2, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    goto :goto_0

    .line 12731
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/view/View$OnAttachStateChangeListener;
    :cond_4
    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 12732
    .local v4, "vis":I
    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    .line 12733
    invoke-virtual {p0, v4}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 12735
    :cond_5
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_6

    .line 12737
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 12739
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 12740
    return-void
.end method

.method dispatchCancelPendingInputEvents()V
    .locals 3

    .prologue
    .line 12807
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    .line 12808
    invoke-virtual {p0}, Landroid/view/View;->onCancelPendingInputEvents()V

    .line 12809
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 12810
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCancelPendingInputEvents()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12813
    :cond_0
    return-void
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 0
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    .line 8234
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 8235
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 8213
    invoke-virtual {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8214
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 12743
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12744
    .local v1, "info":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    .line 12745
    iget v5, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 12746
    .local v5, "vis":I
    if-eq v5, v7, :cond_0

    .line 12747
    invoke-virtual {p0, v7}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 12751
    .end local v5    # "vis":I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 12753
    iget-object v2, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 12754
    .local v2, "li":Landroid/view/View$ListenerInfo;
    if-eqz v2, :cond_1

    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    .line 12756
    .local v4, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 12761
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnAttachStateChangeListener;

    .line 12762
    .local v3, "listener":Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v3, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Landroid/view/View$OnAttachStateChangeListener;
    .end local v4    # "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_1
    move-object v4, v6

    .line 12754
    goto :goto_0

    .line 12766
    .restart local v4    # "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_2
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v8, 0x100000

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 12767
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12768
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const v8, -0x100001

    and-int/2addr v7, v8

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12771
    :cond_3
    iput-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12772
    iget-object v6, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v6, :cond_4

    .line 12773
    iget-object v6, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v6}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->dispatchDetachedFromWindow()V

    .line 12775
    :cond_4
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 0
    .param p1, "hint"    # I

    .prologue
    .line 8111
    invoke-virtual {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 8112
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 17500
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 17502
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17504
    const/4 v1, 0x1

    .line 17506
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 9231
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 0

    .prologue
    .line 7738
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 7739
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 7999
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7893
    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v4, :cond_0

    .line 7894
    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 7897
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 7898
    .local v1, "source":I
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_6

    .line 7899
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 7900
    .local v0, "action":I
    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    const/16 v4, 0xa

    if-ne v0, v4, :cond_3

    .line 7903
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7920
    .end local v0    # "action":I
    :cond_2
    :goto_0
    return v2

    .line 7906
    .restart local v0    # "action":I
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7913
    .end local v0    # "action":I
    :cond_4
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7917
    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_5

    .line 7918
    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_5
    move v2, v3

    .line 7920
    goto :goto_0

    .line 7909
    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 7985
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchGetDisplayList()V
    .locals 0

    .prologue
    .line 13379
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 7953
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7955
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7958
    const/4 v1, 0x1

    .line 7961
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7784
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 7785
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 7790
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7791
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1

    # getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1

    # getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-interface {v1, p0, v4, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 7804
    :goto_0
    return v1

    .line 7796
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_1
    invoke-virtual {p1, p0, v1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 7798
    goto :goto_0

    .line 7796
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 7801
    :cond_3
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 7802
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_4
    move v1, v3

    .line 7804
    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 7770
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 7814
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8016
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8017
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 8019
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5112
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 5113
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 5115
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5125
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5126
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12924
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 12925
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 12926
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 12929
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12930
    invoke-virtual {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 12931
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 12932
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12937
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12857
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 12858
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12859
    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 12860
    .local v0, "state":Landroid/os/Parcelable;
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 12861
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12864
    :cond_0
    if-eqz v0, :cond_1

    .line 12867
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12870
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .locals 0
    .param p1, "screenState"    # I

    .prologue
    .line 12312
    invoke-virtual {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 12313
    return-void
.end method

.method protected dispatchSetActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 15899
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 6601
    return-void
.end method

.method protected dispatchSetSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 15856
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 0

    .prologue
    .line 7718
    invoke-direct {p0}, Landroid/view/View;->clearDisplayList()V

    .line 7720
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 7721
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 17213
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 17214
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$1100(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17215
    # getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$1100(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    and-int/lit16 v2, p1, 0x7fff

    invoke-interface {v1, v2}, Landroid/view/View$OnSystemUiVisibilityChangeListener;->onSystemUiVisibilityChange(I)V

    .line 17218
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7825
    iget-object v3, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_0

    .line 7826
    iget-object v3, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v3, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 7829
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7831
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7832
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_2

    # getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_2

    # getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-interface {v3, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7845
    .end local v0    # "li":Landroid/view/View$ListenerInfo;
    :cond_1
    :goto_0
    return v1

    .line 7837
    .restart local v0    # "li":Landroid/view/View$ListenerInfo;
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7842
    .end local v0    # "li":Landroid/view/View$ListenerInfo;
    :cond_3
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 7843
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_4
    move v1, v2

    .line 7845
    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 7873
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_0

    .line 7874
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 7877
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 6766
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 8081
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 8082
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 8031
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 8032
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 17194
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowSystemUiVisibilityChanged(I)V

    .line 17195
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 8135
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 8136
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 39
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 14546
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 14547
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 14549
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v27, v0

    .line 14550
    .local v27, "privateFlags":I
    const/high16 v2, 0x600000

    and-int v2, v2, v27

    const/high16 v3, 0x400000

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    if-nez v2, :cond_6

    :cond_1
    const/4 v12, 0x1

    .line 14552
    .local v12, "dirtyOpaque":Z
    :goto_0
    const v2, -0x600001

    and-int v2, v2, v27

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14569
    if-nez v12, :cond_3

    .line 14570
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 14571
    .local v9, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_3

    .line 14572
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v31, v0

    .line 14573
    .local v31, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v32, v0

    .line 14575
    .local v32, "scrollY":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    if-eqz v2, :cond_2

    .line 14576
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14577
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 14580
    :cond_2
    or-int v2, v31, v32

    if-nez v2, :cond_7

    .line 14581
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 14591
    .end local v9    # "background":Landroid/graphics/drawable/Drawable;
    .end local v31    # "scrollX":I
    .end local v32    # "scrollY":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v38, v0

    .line 14592
    .local v38, "viewFlags":I
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_8

    const/16 v20, 0x1

    .line 14593
    .local v20, "horizontalEdges":Z
    :goto_2
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_9

    const/16 v37, 0x1

    .line 14594
    .local v37, "verticalEdges":Z
    :goto_3
    if-nez v37, :cond_a

    if-nez v20, :cond_a

    .line 14596
    if-nez v12, :cond_4

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 14599
    :cond_4
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 14602
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 14604
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 14605
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 14751
    :cond_5
    :goto_4
    return-void

    .line 14550
    .end local v12    # "dirtyOpaque":Z
    .end local v20    # "horizontalEdges":Z
    .end local v37    # "verticalEdges":Z
    .end local v38    # "viewFlags":I
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 14583
    .restart local v9    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "dirtyOpaque":Z
    .restart local v31    # "scrollX":I
    .restart local v32    # "scrollY":I
    :cond_7
    move/from16 v0, v31

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14584
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 14585
    move/from16 v0, v31

    neg-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v32

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 14592
    .end local v9    # "background":Landroid/graphics/drawable/Drawable;
    .end local v31    # "scrollX":I
    .end local v32    # "scrollY":I
    .restart local v38    # "viewFlags":I
    :cond_8
    const/16 v20, 0x0

    goto :goto_2

    .line 14593
    .restart local v20    # "horizontalEdges":Z
    :cond_9
    const/16 v37, 0x0

    goto :goto_3

    .line 14619
    .restart local v37    # "verticalEdges":Z
    :cond_a
    const/16 v16, 0x0

    .line 14620
    .local v16, "drawTop":Z
    const/4 v13, 0x0

    .line 14621
    .local v13, "drawBottom":Z
    const/4 v14, 0x0

    .line 14622
    .local v14, "drawLeft":Z
    const/4 v15, 0x0

    .line 14624
    .local v15, "drawRight":Z
    const/16 v36, 0x0

    .line 14625
    .local v36, "topFadeStrength":F
    const/4 v11, 0x0

    .line 14626
    .local v11, "bottomFadeStrength":F
    const/16 v22, 0x0

    .line 14627
    .local v22, "leftFadeStrength":F
    const/16 v29, 0x0

    .line 14630
    .local v29, "rightFadeStrength":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v26, v0

    .line 14632
    .local v26, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v25

    .line 14633
    .local v25, "offsetRequired":Z
    if-eqz v25, :cond_b

    .line 14634
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v2

    add-int v26, v26, v2

    .line 14637
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollX:I

    add-int v21, v2, v26

    .line 14638
    .local v21, "left":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    add-int v2, v2, v21

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v2, v3

    sub-int v28, v2, v26

    .line 14639
    .local v28, "right":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getFadeTop(Z)I

    move-result v3

    add-int v35, v2, v3

    .line 14640
    .local v35, "top":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getFadeHeight(Z)I

    move-result v2

    add-int v10, v35, v2

    .line 14642
    .local v10, "bottom":I
    if-eqz v25, :cond_c

    .line 14643
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v2

    add-int v28, v28, v2

    .line 14644
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v2

    add-int/2addr v10, v2

    .line 14647
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object/from16 v33, v0

    .line 14648
    .local v33, "scrollabilityCache":Landroid/view/View$ScrollabilityCache;
    move-object/from16 v0, v33

    iget v2, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 14649
    .local v18, "fadeHeight":F
    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v23, v0

    .line 14653
    .local v23, "length":I
    if-eqz v37, :cond_d

    add-int v2, v35, v23

    sub-int v3, v10, v23

    if-le v2, v3, :cond_d

    .line 14654
    sub-int v2, v10, v35

    div-int/lit8 v23, v2, 0x2

    .line 14658
    :cond_d
    if-eqz v20, :cond_e

    add-int v2, v21, v23

    sub-int v3, v28, v23

    if-le v2, v3, :cond_e

    .line 14659
    sub-int v2, v28, v21

    div-int/lit8 v23, v2, 0x2

    .line 14662
    :cond_e
    if-eqz v37, :cond_f

    .line 14663
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v36

    .line 14664
    mul-float v2, v36, v18

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1a

    const/16 v16, 0x1

    .line 14665
    :goto_5
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 14666
    mul-float v2, v11, v18

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b

    const/4 v13, 0x1

    .line 14669
    :cond_f
    :goto_6
    if-eqz v20, :cond_10

    .line 14670
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 14671
    mul-float v2, v22, v18

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1c

    const/4 v14, 0x1

    .line 14672
    :goto_7
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v29

    .line 14673
    mul-float v2, v29, v18

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1d

    const/4 v15, 0x1

    .line 14676
    :cond_10
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v30

    .line 14678
    .local v30, "saveCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSolidColor()I

    move-result v34

    .line 14679
    .local v34, "solidColor":I
    if-nez v34, :cond_1e

    .line 14680
    const/16 v19, 0x4

    .line 14682
    .local v19, "flags":I
    if-eqz v16, :cond_11

    .line 14683
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    add-int v2, v35, v23

    int-to-float v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 14686
    :cond_11
    if-eqz v13, :cond_12

    .line 14687
    move/from16 v0, v21

    int-to-float v3, v0

    sub-int v2, v10, v23

    int-to-float v4, v2

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 14690
    :cond_12
    if-eqz v14, :cond_13

    .line 14691
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    add-int v2, v21, v23

    int-to-float v5, v2

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 14694
    :cond_13
    if-eqz v15, :cond_14

    .line 14695
    sub-int v2, v28, v23

    int-to-float v3, v2

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 14702
    .end local v19    # "flags":I
    :cond_14
    :goto_9
    if-nez v12, :cond_15

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 14705
    :cond_15
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 14708
    move-object/from16 v0, v33

    iget-object v7, v0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 14709
    .local v7, "p":Landroid/graphics/Paint;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v24, v0

    .line 14710
    .local v24, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    move-object/from16 v17, v0

    .line 14712
    .local v17, "fade":Landroid/graphics/Shader;
    if-eqz v16, :cond_16

    .line 14713
    const/high16 v2, 0x3f800000

    mul-float v3, v18, v36

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14714
    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14715
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 14716
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    add-int v2, v35, v23

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14719
    :cond_16
    if-eqz v13, :cond_17

    .line 14720
    const/high16 v2, 0x3f800000

    mul-float v3, v18, v11

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14721
    const/high16 v2, 0x43340000

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 14722
    move/from16 v0, v21

    int-to-float v2, v0

    int-to-float v3, v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14723
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 14724
    move/from16 v0, v21

    int-to-float v3, v0

    sub-int v2, v10, v23

    int-to-float v4, v2

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14727
    :cond_17
    if-eqz v14, :cond_18

    .line 14728
    const/high16 v2, 0x3f800000

    mul-float v3, v18, v22

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14729
    const/high16 v2, -0x3d4c0000

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 14730
    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14731
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 14732
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    add-int v2, v21, v23

    int-to-float v5, v2

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14735
    :cond_18
    if-eqz v15, :cond_19

    .line 14736
    const/high16 v2, 0x3f800000

    mul-float v3, v18, v29

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14737
    const/high16 v2, 0x42b40000

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 14738
    move/from16 v0, v28

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14739
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 14740
    sub-int v2, v28, v23

    int-to-float v3, v2

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14743
    :cond_19
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 14746
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 14748
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 14749
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 14664
    .end local v7    # "p":Landroid/graphics/Paint;
    .end local v17    # "fade":Landroid/graphics/Shader;
    .end local v24    # "matrix":Landroid/graphics/Matrix;
    .end local v30    # "saveCount":I
    .end local v34    # "solidColor":I
    :cond_1a
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 14666
    :cond_1b
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 14671
    :cond_1c
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 14673
    :cond_1d
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 14698
    .restart local v30    # "saveCount":I
    .restart local v34    # "solidColor":I
    :cond_1e
    invoke-virtual/range {v33 .. v34}, Landroid/view/View$ScrollabilityCache;->setFadeColor(I)V

    goto/16 :goto_9
.end method

.method draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z
    .locals 53
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "drawingTime"    # J

    .prologue
    .line 14201
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v3, :cond_5

    const/16 v52, 0x1

    .line 14202
    .local v52, "useDisplayListProperties":Z
    :goto_0
    const/16 v38, 0x0

    .line 14203
    .local v38, "more":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v27

    .line 14204
    .local v27, "childHasIdentityMatrix":Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    .line 14206
    .local v30, "flags":I
    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_0

    .line 14207
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 14208
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v3, v3, -0x101

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14211
    :cond_0
    const/16 v50, 0x0

    .line 14212
    .local v50, "transformToApply":Landroid/view/animation/Transformation;
    const/16 v28, 0x0

    .line 14214
    .local v28, "concatMatrix":Z
    const/4 v8, 0x0

    .line 14216
    .local v8, "scalingRequired":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayerType()I

    move-result v37

    .line 14218
    .local v37, "layerType":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v31

    .line 14219
    .local v31, "hardwareAccelerated":Z
    const v3, 0x8000

    and-int v3, v3, v30

    if-nez v3, :cond_1

    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_6

    .line 14221
    :cond_1
    const/16 v26, 0x1

    .line 14223
    .local v26, "caching":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v8, v3, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 14228
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    .line 14229
    .local v7, "a":Landroid/view/animation/Animation;
    if-eqz v7, :cond_9

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    .line 14230
    invoke-direct/range {v3 .. v8}, Landroid/view/View;->drawAnimation(Landroid/view/ViewGroup;JLandroid/view/animation/Animation;Z)Z

    move-result v38

    .line 14231
    invoke-virtual {v7}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v28

    .line 14232
    if-eqz v28, :cond_3

    .line 14233
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 14235
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v50

    .line 14255
    :cond_4
    :goto_2
    if-nez v27, :cond_d

    const/4 v3, 0x1

    :goto_3
    or-int v28, v28, v3

    .line 14259
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14261
    if-nez v28, :cond_e

    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x801

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    int-to-float v10, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    int-to-float v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    int-to-float v12, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    int-to-float v13, v3

    sget-object v14, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_e

    .line 14266
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags2:I

    .line 14533
    :goto_4
    return v38

    .line 14201
    .end local v7    # "a":Landroid/view/animation/Animation;
    .end local v8    # "scalingRequired":Z
    .end local v26    # "caching":Z
    .end local v27    # "childHasIdentityMatrix":Z
    .end local v28    # "concatMatrix":Z
    .end local v30    # "flags":I
    .end local v31    # "hardwareAccelerated":Z
    .end local v37    # "layerType":I
    .end local v38    # "more":Z
    .end local v50    # "transformToApply":Landroid/view/animation/Transformation;
    .end local v52    # "useDisplayListProperties":Z
    :cond_5
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 14225
    .restart local v8    # "scalingRequired":Z
    .restart local v27    # "childHasIdentityMatrix":Z
    .restart local v28    # "concatMatrix":Z
    .restart local v30    # "flags":I
    .restart local v31    # "hardwareAccelerated":Z
    .restart local v37    # "layerType":I
    .restart local v38    # "more":Z
    .restart local v50    # "transformToApply":Landroid/view/animation/Transformation;
    .restart local v52    # "useDisplayListProperties":Z
    :cond_6
    if-nez v37, :cond_7

    if-eqz v31, :cond_8

    :cond_7
    const/16 v26, 0x1

    .restart local v26    # "caching":Z
    :goto_5
    goto :goto_1

    .end local v26    # "caching":Z
    :cond_8
    const/16 v26, 0x0

    goto :goto_5

    .line 14237
    .restart local v7    # "a":Landroid/view/animation/Animation;
    .restart local v26    # "caching":Z
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v3, :cond_a

    .line 14240
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/DisplayList;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 14241
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, -0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 14243
    :cond_a
    if-nez v52, :cond_4

    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_4

    .line 14245
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v46

    .line 14246
    .local v46, "t":Landroid/view/animation/Transformation;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v34

    .line 14247
    .local v34, "hasTransform":Z
    if-eqz v34, :cond_4

    .line 14248
    invoke-virtual/range {v46 .. v46}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v51

    .line 14249
    .local v51, "transformType":I
    if-eqz v51, :cond_b

    move-object/from16 v50, v46

    .line 14250
    :goto_6
    and-int/lit8 v3, v51, 0x2

    if-eqz v3, :cond_c

    const/16 v28, 0x1

    :goto_7
    goto/16 :goto_2

    .line 14249
    :cond_b
    const/16 v50, 0x0

    goto :goto_6

    .line 14250
    :cond_c
    const/16 v28, 0x0

    goto :goto_7

    .line 14255
    .end local v34    # "hasTransform":Z
    .end local v46    # "t":Landroid/view/animation/Transformation;
    .end local v51    # "transformType":I
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 14269
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags2:I

    const v4, -0x10000001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags2:I

    .line 14271
    if-eqz v31, :cond_f

    .line 14274
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 14275
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14278
    :cond_f
    const/16 v29, 0x0

    .line 14279
    .local v29, "displayList":Landroid/view/DisplayList;
    const/16 v24, 0x0

    .line 14280
    .local v24, "cache":Landroid/graphics/Bitmap;
    const/16 v32, 0x0

    .line 14281
    .local v32, "hasDisplayList":Z
    if-eqz v26, :cond_11

    .line 14282
    if-nez v31, :cond_2b

    .line 14283
    if-eqz v37, :cond_10

    .line 14284
    const/16 v37, 0x1

    .line 14285
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 14287
    :cond_10
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 14311
    :cond_11
    :goto_9
    and-int v52, v52, v32

    .line 14312
    if-eqz v52, :cond_12

    .line 14313
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v29

    .line 14314
    invoke-virtual/range {v29 .. v29}, Landroid/view/DisplayList;->isValid()Z

    move-result v3

    if-nez v3, :cond_12

    .line 14318
    const/16 v29, 0x0

    .line 14319
    const/16 v32, 0x0

    .line 14320
    const/16 v52, 0x0

    .line 14324
    :cond_12
    const/16 v44, 0x0

    .line 14325
    .local v44, "sx":I
    const/16 v45, 0x0

    .line 14326
    .local v45, "sy":I
    if-nez v32, :cond_13

    .line 14327
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 14328
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v44, v0

    .line 14329
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v45, v0

    .line 14332
    :cond_13
    if-eqz v24, :cond_14

    if-eqz v32, :cond_2d

    :cond_14
    const/16 v33, 0x1

    .line 14333
    .local v33, "hasNoCache":Z
    :goto_a
    if-nez v24, :cond_2e

    if-nez v32, :cond_2e

    const/4 v3, 0x2

    move/from16 v0, v37

    if-eq v0, v3, :cond_2e

    const/16 v39, 0x1

    .line 14336
    .local v39, "offsetForScroll":Z
    :goto_b
    const/16 v40, -0x1

    .line 14337
    .local v40, "restoreTo":I
    if-eqz v52, :cond_15

    if-eqz v50, :cond_16

    .line 14338
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v40

    .line 14340
    :cond_16
    if-eqz v39, :cond_2f

    .line 14341
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int v3, v3, v44

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int v4, v4, v45

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14357
    :cond_17
    :goto_c
    if-eqz v52, :cond_32

    const/high16 v23, 0x3f800000

    .line 14358
    .local v23, "alpha":F
    :goto_d
    if-nez v50, :cond_18

    const/high16 v3, 0x3f800000

    cmpg-float v3, v23, v3

    if-ltz v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_39

    .line 14360
    :cond_18
    if-nez v50, :cond_19

    if-nez v27, :cond_1d

    .line 14361
    :cond_19
    const/16 v47, 0x0

    .line 14362
    .local v47, "transX":I
    const/16 v48, 0x0

    .line 14364
    .local v48, "transY":I
    if-eqz v39, :cond_1a

    .line 14365
    move/from16 v0, v44

    neg-int v0, v0

    move/from16 v47, v0

    .line 14366
    move/from16 v0, v45

    neg-int v0, v0

    move/from16 v48, v0

    .line 14369
    :cond_1a
    if-eqz v50, :cond_1c

    .line 14370
    if-eqz v28, :cond_1b

    .line 14371
    if-eqz v52, :cond_33

    .line 14372
    invoke-virtual/range {v50 .. v50}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/DisplayList;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 14380
    :goto_e
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14383
    :cond_1b
    invoke-virtual/range {v50 .. v50}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v49

    .line 14384
    .local v49, "transformAlpha":F
    const/high16 v3, 0x3f800000

    cmpg-float v3, v49, v3

    if-gez v3, :cond_1c

    .line 14385
    mul-float v23, v23, v49

    .line 14386
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14390
    .end local v49    # "transformAlpha":F
    :cond_1c
    if-nez v27, :cond_1d

    if-nez v52, :cond_1d

    .line 14391
    move/from16 v0, v47

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v48

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14392
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 14393
    move/from16 v0, v47

    int-to-float v3, v0

    move/from16 v0, v48

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14398
    .end local v47    # "transX":I
    .end local v48    # "transY":I
    :cond_1d
    const/high16 v3, 0x3f800000

    cmpg-float v3, v23, v3

    if-ltz v3, :cond_1e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    .line 14400
    :cond_1e
    const/high16 v3, 0x3f800000

    cmpg-float v3, v23, v3

    if-gez v3, :cond_34

    .line 14401
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 14405
    :goto_f
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14406
    if-eqz v33, :cond_21

    .line 14407
    const/high16 v3, 0x437f0000

    mul-float v3, v3, v23

    float-to-int v14, v3

    .line 14408
    .local v14, "multipliedAlpha":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v3

    if-nez v3, :cond_38

    .line 14409
    const/4 v15, 0x4

    .line 14410
    .local v15, "layerFlags":I
    and-int/lit8 v3, v30, 0x1

    if-nez v3, :cond_1f

    if-eqz v37, :cond_20

    .line 14412
    :cond_1f
    or-int/lit8 v15, v15, 0x10

    .line 14414
    :cond_20
    if-eqz v52, :cond_35

    .line 14415
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float v3, v3, v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v4

    mul-float/2addr v3, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/DisplayList;->setAlpha(F)V

    .line 14433
    .end local v14    # "multipliedAlpha":I
    .end local v15    # "layerFlags":I
    :cond_21
    :goto_10
    and-int/lit8 v3, v30, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    if-nez v52, :cond_22

    if-nez v24, :cond_22

    .line 14435
    if-eqz v39, :cond_3a

    .line 14436
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    add-int v3, v3, v44

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    add-int v4, v4, v45

    move-object/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 14446
    :cond_22
    :goto_11
    if-nez v52, :cond_23

    if-eqz v32, :cond_23

    .line 14447
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v29

    .line 14448
    invoke-virtual/range {v29 .. v29}, Landroid/view/DisplayList;->isValid()Z

    move-result v3

    if-nez v3, :cond_23

    .line 14452
    const/16 v29, 0x0

    .line 14453
    const/16 v32, 0x0

    .line 14457
    :cond_23
    if-eqz v33, :cond_42

    .line 14458
    const/16 v36, 0x0

    .line 14459
    .local v36, "layerRendered":Z
    const/4 v3, 0x2

    move/from16 v0, v37

    if-ne v0, v3, :cond_24

    if-nez v52, :cond_24

    .line 14460
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v35

    .line 14461
    .local v35, "layer":Landroid/view/HardwareLayer;
    if-eqz v35, :cond_3d

    invoke-virtual/range {v35 .. v35}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 14462
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000

    mul-float v4, v4, v23

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v3, p1

    .line 14463
    check-cast v3, Landroid/view/HardwareCanvas;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 14464
    const/16 v36, 0x1

    .line 14474
    .end local v35    # "layer":Landroid/view/HardwareLayer;
    :cond_24
    :goto_12
    if-nez v36, :cond_25

    .line 14475
    if-nez v32, :cond_41

    .line 14477
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_40

    .line 14478
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x600001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14479
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 14513
    .end local v36    # "layerRendered":Z
    :cond_25
    :goto_13
    if-ltz v40, :cond_26

    .line 14514
    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 14517
    :cond_26
    if-eqz v7, :cond_28

    if-nez v38, :cond_28

    .line 14518
    if-nez v31, :cond_27

    invoke-virtual {v7}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v3

    if-nez v3, :cond_27

    .line 14519
    const/16 v3, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->onSetAlpha(I)Z

    .line 14521
    :cond_27
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7}, Landroid/view/ViewGroup;->finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 14524
    :cond_28
    if-eqz v38, :cond_29

    if-eqz v31, :cond_29

    .line 14525
    invoke-virtual {v7}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_29

    .line 14527
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 14531
    :cond_29
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/View;->mRecreateDisplayList:Z

    goto/16 :goto_4

    .line 14274
    .end local v23    # "alpha":F
    .end local v24    # "cache":Landroid/graphics/Bitmap;
    .end local v29    # "displayList":Landroid/view/DisplayList;
    .end local v32    # "hasDisplayList":Z
    .end local v33    # "hasNoCache":Z
    .end local v39    # "offsetForScroll":Z
    .end local v40    # "restoreTo":I
    .end local v44    # "sx":I
    .end local v45    # "sy":I
    :cond_2a
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 14289
    .restart local v24    # "cache":Landroid/graphics/Bitmap;
    .restart local v29    # "displayList":Landroid/view/DisplayList;
    .restart local v32    # "hasDisplayList":Z
    :cond_2b
    packed-switch v37, :pswitch_data_0

    goto/16 :goto_9

    .line 14306
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v32

    goto/16 :goto_9

    .line 14291
    :pswitch_1
    if-eqz v52, :cond_2c

    .line 14292
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v32

    goto/16 :goto_9

    .line 14294
    :cond_2c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 14295
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 14297
    goto/16 :goto_9

    .line 14299
    :pswitch_2
    if-eqz v52, :cond_11

    .line 14300
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v32

    goto/16 :goto_9

    .line 14332
    .restart local v44    # "sx":I
    .restart local v45    # "sy":I
    :cond_2d
    const/16 v33, 0x0

    goto/16 :goto_a

    .line 14333
    .restart local v33    # "hasNoCache":Z
    :cond_2e
    const/16 v39, 0x0

    goto/16 :goto_b

    .line 14343
    .restart local v39    # "offsetForScroll":Z
    .restart local v40    # "restoreTo":I
    :cond_2f
    if-nez v52, :cond_30

    .line 14344
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14346
    :cond_30
    if-eqz v8, :cond_17

    .line 14347
    if-eqz v52, :cond_31

    .line 14349
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v40

    .line 14352
    :cond_31
    const/high16 v3, 0x3f800000

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    div-float v41, v3, v4

    .line 14353
    .local v41, "scale":F
    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_c

    .line 14357
    .end local v41    # "scale":F
    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v4

    mul-float v23, v3, v4

    goto/16 :goto_d

    .line 14376
    .restart local v23    # "alpha":F
    .restart local v47    # "transX":I
    .restart local v48    # "transY":I
    :cond_33
    move/from16 v0, v47

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v48

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14377
    invoke-virtual/range {v50 .. v50}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 14378
    move/from16 v0, v47

    int-to-float v3, v0

    move/from16 v0, v48

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_e

    .line 14403
    .end local v47    # "transX":I
    .end local v48    # "transY":I
    :cond_34
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, -0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    goto/16 :goto_f

    .line 14416
    .restart local v14    # "multipliedAlpha":I
    .restart local v15    # "layerFlags":I
    :cond_35
    if-nez v37, :cond_21

    .line 14417
    if-eqz v32, :cond_36

    const/16 v42, 0x0

    .line 14418
    .local v42, "scrollX":I
    :goto_14
    if-eqz v32, :cond_37

    const/16 v43, 0x0

    .line 14419
    .local v43, "scrollY":I
    :goto_15
    move/from16 v0, v42

    int-to-float v10, v0

    move/from16 v0, v43

    int-to-float v11, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    add-int v3, v3, v42

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v12, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    add-int v3, v3, v43

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    int-to-float v13, v3

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto/16 :goto_10

    .end local v42    # "scrollX":I
    .end local v43    # "scrollY":I
    :cond_36
    move/from16 v42, v44

    .line 14417
    goto :goto_14

    .restart local v42    # "scrollX":I
    :cond_37
    move/from16 v43, v45

    .line 14418
    goto :goto_15

    .line 14424
    .end local v15    # "layerFlags":I
    .end local v42    # "scrollX":I
    :cond_38
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x40000

    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_10

    .line 14428
    .end local v14    # "multipliedAlpha":I
    :cond_39
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_21

    .line 14429
    const/16 v3, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->onSetAlpha(I)Z

    .line 14430
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x40001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_10

    .line 14438
    :cond_3a
    if-eqz v8, :cond_3b

    if-nez v24, :cond_3c

    .line 14439
    :cond_3b
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_11

    .line 14441
    :cond_3c
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_11

    .line 14466
    .restart local v35    # "layer":Landroid/view/HardwareLayer;
    .restart local v36    # "layerRendered":Z
    :cond_3d
    if-eqz v32, :cond_3e

    const/16 v42, 0x0

    .line 14467
    .restart local v42    # "scrollX":I
    :goto_16
    if-eqz v32, :cond_3f

    const/16 v43, 0x0

    .line 14468
    .restart local v43    # "scrollY":I
    :goto_17
    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    add-int v3, v3, v42

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    add-int v3, v3, v43

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0x14

    move-object/from16 v16, p1

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto/16 :goto_12

    .end local v42    # "scrollX":I
    .end local v43    # "scrollY":I
    :cond_3e
    move/from16 v42, v44

    .line 14466
    goto :goto_16

    .restart local v42    # "scrollX":I
    :cond_3f
    move/from16 v43, v45

    .line 14467
    goto :goto_17

    .line 14481
    .end local v35    # "layer":Landroid/view/HardwareLayer;
    .end local v42    # "scrollX":I
    :cond_40
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_13

    .line 14484
    :cond_41
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x600001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    move-object/from16 v3, p1

    .line 14485
    check-cast v3, Landroid/view/HardwareCanvas;

    const/4 v4, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v4, v1}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    goto/16 :goto_13

    .line 14488
    .end local v36    # "layerRendered":Z
    :cond_42
    if-eqz v24, :cond_25

    .line 14489
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x600001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14492
    if-nez v37, :cond_46

    .line 14493
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 14494
    .local v25, "cachePaint":Landroid/graphics/Paint;
    if-nez v25, :cond_43

    .line 14495
    new-instance v25, Landroid/graphics/Paint;

    .end local v25    # "cachePaint":Landroid/graphics/Paint;
    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    .line 14496
    .restart local v25    # "cachePaint":Landroid/graphics/Paint;
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 14497
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 14499
    :cond_43
    const/high16 v3, 0x3f800000

    cmpg-float v3, v23, v3

    if-gez v3, :cond_45

    .line 14500
    const/high16 v3, 0x437f0000

    mul-float v3, v3, v23

    float-to-int v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14501
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x1000

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14510
    :cond_44
    :goto_18
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_13

    .line 14502
    :cond_45
    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_44

    .line 14503
    const/16 v3, 0xff

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14504
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v3, v3, -0x1001

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_18

    .line 14507
    .end local v25    # "cachePaint":Landroid/graphics/Paint;
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 14508
    .restart local v25    # "cachePaint":Landroid/graphics/Paint;
    const/high16 v3, 0x437f0000

    mul-float v3, v3, v23

    float-to-int v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_18

    .line 14289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 15249
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 15250
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15251
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 15253
    :cond_0
    return-void
.end method

.method ensureTransformationInfo()V
    .locals 1

    .prologue
    .line 9427
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-nez v0, :cond_0

    .line 9428
    new-instance v0, Landroid/view/View$TransformationInfo;

    invoke-direct {v0}, Landroid/view/View$TransformationInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9430
    :cond_0
    return-void
.end method

.method public executeHardwareAction(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 12609
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 12610
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->safelyRun(Ljava/lang/Runnable;)Z

    move-result v0

    .line 12612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 5749
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .end local p0    # "this":Landroid/view/View;
    :goto_0
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 6778
    sparse-switch p2, :sswitch_data_0

    .line 6805
    :cond_0
    :goto_0
    return-object v1

    .line 6780
    :sswitch_0
    iget v2, p0, Landroid/view/View;->mNextFocusLeftId:I

    if-eq v2, v3, :cond_0

    .line 6781
    iget v1, p0, Landroid/view/View;->mNextFocusLeftId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6783
    :sswitch_1
    iget v2, p0, Landroid/view/View;->mNextFocusRightId:I

    if-eq v2, v3, :cond_0

    .line 6784
    iget v1, p0, Landroid/view/View;->mNextFocusRightId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6786
    :sswitch_2
    iget v2, p0, Landroid/view/View;->mNextFocusUpId:I

    if-eq v2, v3, :cond_0

    .line 6787
    iget v1, p0, Landroid/view/View;->mNextFocusUpId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6789
    :sswitch_3
    iget v2, p0, Landroid/view/View;->mNextFocusDownId:I

    if-eq v2, v3, :cond_0

    .line 6790
    iget v1, p0, Landroid/view/View;->mNextFocusDownId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6792
    :sswitch_4
    iget v2, p0, Landroid/view/View;->mNextFocusForwardId:I

    if-eq v2, v3, :cond_0

    .line 6793
    iget v1, p0, Landroid/view/View;->mNextFocusForwardId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6795
    :sswitch_5
    iget v2, p0, Landroid/view/View;->mID:I

    if-eq v2, v3, :cond_0

    .line 6796
    iget v0, p0, Landroid/view/View;->mID:I

    .line 6797
    .local v0, "id":I
    new-instance v1, Landroid/view/View$2;

    invoke-direct {v1, p0, v0}, Landroid/view/View$2;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6778
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method final findViewByAccessibilityId(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .prologue
    .line 16169
    if-gez p1, :cond_0

    .line 16170
    const/4 v0, 0x0

    .line 16172
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .prologue
    .line 16191
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 16194
    .end local p0    # "this":Landroid/view/View;
    :goto_0
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 16156
    if-gez p1, :cond_0

    .line 16157
    const/4 v0, 0x0

    .line 16159
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 16220
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .locals 4
    .param p1, "start"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 16240
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 16242
    .local v0, "childToSkip":Landroid/view/View;
    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 16243
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    if-ne p1, p0, :cond_1

    .line 16249
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v2

    .line 16247
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 16248
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_2

    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_3

    .line 16249
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 16252
    :cond_3
    move-object v0, p1

    move-object p1, v1

    .line 16253
    check-cast p1, Landroid/view/View;

    .line 16254
    goto :goto_0
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 16142
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16145
    .end local p0    # "this":Landroid/view/View;
    :goto_0
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 16117
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne p1, v0, :cond_0

    .line 16120
    .end local p0    # "this":Landroid/view/View;
    :goto_0
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 16205
    if-nez p1, :cond_0

    .line 16206
    const/4 v0, 0x0

    .line 16208
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 16129
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16132
    .end local p0    # "this":Landroid/view/View;
    :goto_0
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p2, "searched"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 6891
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6892
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_0

    .line 6893
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6904
    :cond_0
    :goto_0
    return-void

    .line 6895
    :cond_1
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 6898
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 6899
    .local v1, "searchedLowerCase":Ljava/lang/String;
    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 6900
    .local v0, "contentDescriptionLowerCase":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6901
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v4, -0x80000000

    .line 6039
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 6040
    iput v4, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 6041
    iput v4, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 6042
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 6043
    .local v0, "localInsets":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 6044
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "localInsets":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6045
    .restart local v0    # "localInsets":Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 6047
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 6048
    .local v1, "res":Z
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 6049
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 6050
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 6054
    .end local v0    # "localInsets":Landroid/graphics/Rect;
    .end local v1    # "res":Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fitsSystemWindows()Z
    .locals 1

    .prologue
    .line 6124
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 6747
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 6748
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 6750
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceLayout()V
    .locals 2

    .prologue
    .line 16575
    iget-object v0, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clear()V

    .line 16577
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16578
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16579
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 10
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 17021
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 17022
    .local v6, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz p1, :cond_0

    if-eqz v6, :cond_0

    .line 17023
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 17024
    .local v8, "pflags":I
    and-int/lit16 v0, v8, 0x80

    if-nez v0, :cond_1

    .line 17027
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 17028
    .local v7, "location":[I
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 17029
    aget v1, v7, v3

    aget v2, v7, v9

    aget v0, v7, v3

    iget v3, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v0, v3

    aget v0, v7, v9

    iget v4, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, v4

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v4, v0, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 17038
    .end local v7    # "location":[I
    .end local v8    # "pflags":I
    :cond_0
    :goto_0
    return v9

    .line 17031
    .restart local v8    # "pflags":I
    :cond_1
    and-int/lit16 v0, v8, 0x100

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 17035
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    goto :goto_0
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 5555
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public getAccessibilityLiveRegion()I
    .locals 2

    .prologue
    .line 7245
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x1800000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x17

    return v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 5594
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 5595
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 5597
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    .prologue
    .line 7642
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    .prologue
    .line 7635
    iget v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    return v0
.end method

.method public getAccessibilityViewId()I
    .locals 2

    .prologue
    .line 5610
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5611
    sget v0, Landroid/view/View;->sNextAccessibilityViewId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/view/View;->sNextAccessibilityViewId:I

    iput v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 5613
    :cond_0
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    return v0
.end method

.method public getAccessibilityWindowId()I
    .locals 1

    .prologue
    .line 5624
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9932
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000

    goto :goto_0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 16912
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 12665
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12666
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 12667
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 12668
    .local v1, "appWindowToken":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 12669
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .line 12673
    .end local v1    # "appWindowToken":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 15571
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 16517
    const/4 v0, -0x1

    return v0
.end method

.method public final getBottom()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 10151
    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 11619
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f800000

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 1

    .prologue
    .line 13993
    const/4 v0, 0x0

    return v0
.end method

.method getBoundsOnScreen(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    const/high16 v8, 0x3f000000

    .line 5326
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v4, :cond_0

    .line 5363
    :goto_0
    return-void

    .line 5330
    :cond_0
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v4, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 5331
    .local v2, "position":Landroid/graphics/RectF;
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5333
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5334
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5337
    :cond_1
    iget v4, p0, Landroid/view/View;->mLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 5339
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5340
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_1
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_3

    move-object v1, v0

    .line 5341
    check-cast v1, Landroid/view/View;

    .line 5343
    .local v1, "parentView":Landroid/view/View;
    iget v4, v1, Landroid/view/View;->mScrollX:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v1, Landroid/view/View;->mScrollY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 5345
    invoke-virtual {v1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5346
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5349
    :cond_2
    iget v4, v1, Landroid/view/View;->mLeft:I

    int-to-float v4, v4

    iget v5, v1, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 5351
    iget-object v0, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5352
    goto :goto_1

    .line 5354
    .end local v1    # "parentView":Landroid/view/View;
    :cond_3
    instance-of v4, v0, Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_4

    move-object v3, v0

    .line 5355
    check-cast v3, Landroid/view/ViewRootImpl;

    .line 5356
    .local v3, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget v4, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v7, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 5359
    .end local v3    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_4
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 5361
    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v8

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v8

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v8

    float-to-int v6, v6

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method public getCameraDistance()F
    .locals 3

    .prologue
    .line 9510
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9511
    iget-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v2

    .line 9512
    .local v0, "dpi":F
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9513
    .local v1, "info":Landroid/view/View$TransformationInfo;
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    if-nez v2, :cond_0

    .line 9514
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1902(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 9515
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 9517
    :cond_0
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Camera;->getLocationZ()F

    move-result v2

    mul-float/2addr v2, v0

    neg-float v2, v2

    return v2
.end method

.method public getClipBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 14073
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
    .end annotation

    .prologue
    .line 5640
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 8284
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 8505
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 12682
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayList()Landroid/view/DisplayList;
    .locals 2

    .prologue
    .line 13535
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/View;->getDisplayList(Landroid/view/DisplayList;Z)Landroid/view/DisplayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    .line 13536
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    return-object v0
.end method

.method public final getDrawableState()[I
    .locals 1

    .prologue
    .line 15284
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 15285
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 15289
    :goto_0
    return-object v0

    .line 15287
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 15288
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15289
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    goto :goto_0
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 13559
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "autoScale"    # Z

    .prologue
    const/high16 v2, 0x20000

    const v1, 0x8000

    .line 13590
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 13591
    const/4 v0, 0x0

    .line 13596
    :goto_0
    return-object v0

    .line 13593
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 13594
    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 13596
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getDrawingCacheBackgroundColor()I
    .locals 1

    .prologue
    .line 13644
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    return v0
.end method

.method public getDrawingCacheQuality()I
    .locals 2

    .prologue
    .line 5802
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x180000

    and-int/2addr v0, v1

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 9316
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 9317
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 9318
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 9319
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 9320
    return-void
.end method

.method public getDrawingTime()J
    .locals 2

    .prologue
    .line 12968
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-wide v0, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getFadeHeight(Z)I
    .locals 3
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 14011
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 14012
    .local v0, "padding":I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 14013
    :cond_0
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method protected getFadeTop(Z)I
    .locals 2
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 14001
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 14002
    .local v0, "top":I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 14003
    :cond_0
    return v0
.end method

.method public getFilterTouchesWhenObscured()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6663
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFitsSystemWindows()Z
    .locals 2

    .prologue
    .line 6119
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusables(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6828
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6829
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 6830
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 10529
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 10530
    return-void
.end method

.method public final getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 10560
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 5
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "globalOffset"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    .line 10547
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v3, v4

    .line 10548
    .local v1, "width":I
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v0, v3, v4

    .line 10549
    .local v0, "height":I
    if-lez v1, :cond_2

    if-lez v0, :cond_2

    .line 10550
    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 10551
    if-eqz p2, :cond_0

    .line 10552
    iget v3, p0, Landroid/view/View;->mScrollX:I

    neg-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    neg-int v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 10554
    :cond_0
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, p1, p2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 10556
    :cond_2
    return v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 11210
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11211
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 11212
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 11214
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 13202
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 13255
    :cond_0
    :goto_0
    return-object v4

    .line 13207
    :cond_1
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13209
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v6

    .line 13210
    .local v3, "width":I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v0, v5, v6

    .line 13212
    .local v0, "height":I
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 13216
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, 0x8000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-nez v5, :cond_5

    .line 13217
    :cond_2
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-nez v5, :cond_6

    .line 13218
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v6

    invoke-virtual {v5, v3, v0, v6}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v5

    iput-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 13220
    iget-object v5, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v7, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 13243
    :cond_3
    :goto_1
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13247
    iget-object v4, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    iget-object v5, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 13248
    iget-object v4, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-direct {p0, v5}, Landroid/view/View;->getHardwareLayerDisplayList(Landroid/view/HardwareLayer;)Landroid/view/DisplayList;

    move-result-object v5

    iget-object v6, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Landroid/view/HardwareLayer;->redrawLater(Landroid/view/DisplayList;Landroid/graphics/Rect;)V

    .line 13249
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 13250
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_4

    iget-object v4, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v2, v4}, Landroid/view/ViewRootImpl;->pushHardwareLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 13252
    :cond_4
    iget-object v4, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 13255
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_5
    iget-object v4, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    goto :goto_0

    .line 13222
    :cond_6
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v5

    if-ne v5, v3, :cond_7

    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v5

    if-eq v5, v0, :cond_8

    .line 13223
    :cond_7
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5, v3, v0}, Landroid/view/HardwareLayer;->resize(II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 13224
    iget-object v5, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v7, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 13233
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 13235
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v1

    .line 13236
    .local v1, "opaque":Z
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->isOpaque()Z

    move-result v5

    if-eq v5, v1, :cond_3

    .line 13237
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5, v1}, Landroid/view/HardwareLayer;->setOpaque(Z)V

    .line 13238
    iget-object v5, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v7, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public getHardwareRenderer()Landroid/view/HardwareRenderer;
    .locals 1

    .prologue
    .line 13401
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 13402
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 13404
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeight()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 9303
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 10483
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10484
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 10485
    .local v0, "info":Landroid/view/View$TransformationInfo;
    if-eqz v0, :cond_0

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v2, :cond_1

    .line 10486
    :cond_0
    iget v2, p0, Landroid/view/View;->mLeft:I

    iget v3, p0, Landroid/view/View;->mTop:I

    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 10494
    :goto_0
    return-void

    .line 10488
    :cond_1
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 10489
    .local v1, "tmpRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10490
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 10491
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mTop:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/view/View;->mTop:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 2

    .prologue
    .line 4239
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4240
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4241
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 4242
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 4245
    .end local v0    # "cache":Landroid/view/View$ScrollabilityCache;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHorizontalScrollFactor()F
    .locals 1

    .prologue
    .line 17750
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method protected getHorizontalScrollbarHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4277
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4278
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 4279
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 4280
    .local v1, "scrollBar":Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_0

    .line 4281
    invoke-virtual {v1, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 4282
    .local v2, "size":I
    if-gtz v2, :cond_0

    .line 4283
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 4289
    .end local v1    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .end local v2    # "size":I
    :cond_0
    return v2
.end method

.method public getId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 16312
    iget v0, p0, Landroid/view/View;->mID:I

    return v0
.end method

.method public getImportantForAccessibility()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "auto"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "yes"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "no"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "noHideDescendants"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 7193
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x700000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method final getInverseMatrix()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 9487
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9488
    .local v0, "info":Landroid/view/View$TransformationInfo;
    if-eqz v0, :cond_2

    .line 9489
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9490
    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2100(Landroid/view/View$TransformationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9491
    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2200(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    if-nez v1, :cond_0

    .line 9492
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$2202(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 9494
    :cond_0
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2200(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 9495
    const/4 v1, 0x0

    # setter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$2102(Landroid/view/View$TransformationInfo;Z)Z

    .line 9497
    :cond_1
    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2200(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 9499
    :goto_0
    return-object v1

    :cond_2
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 7617
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 3
    .param p1, "granularity"    # I

    .prologue
    .line 7680
    sparse-switch p1, :sswitch_data_0

    .line 7711
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 7682
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7683
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 7684
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    move-result-object v0

    .line 7687
    .local v0, "iterator":Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_0

    .line 7692
    .end local v0    # "iterator":Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7693
    .restart local v1    # "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 7694
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    move-result-object v0

    .line 7697
    .local v0, "iterator":Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_0

    .line 7702
    .end local v0    # "iterator":Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7703
    .restart local v1    # "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 7704
    invoke-static {}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getInstance()Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    move-result-object v0

    .line 7706
    .local v0, "iterator":Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_0

    .line 7680
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public getKeepScreenOn()Z
    .locals 2

    .prologue
    .line 5833
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .locals 1

    .prologue
    .line 7756
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLabelFor()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
    .end annotation

    .prologue
    .line 5682
    iget v0, p0, Landroid/view/View;->mLabelForId:I

    return v0
.end method

.method public getLayerType()I
    .locals 1

    .prologue
    .line 13148
    iget v0, p0, Landroid/view/View;->mLayerType:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 4
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "RESOLVED_DIRECTION_LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "RESOLVED_DIRECTION_RTL"
            .end subannotation
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 6378
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6379
    .local v0, "targetSdkVersion":I
    const/16 v2, 0x11

    if-ge v0, v2, :cond_1

    .line 6380
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6383
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation

    .prologue
    .line 10688
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getLeft()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 10224
    iget v0, p0, Landroid/view/View;->mLeft:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 11634
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 1

    .prologue
    .line 13951
    const/4 v0, 0x0

    return v0
.end method

.method getListenerInfo()Landroid/view/View$ListenerInfo;
    .locals 1

    .prologue
    .line 4413
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_0

    .line 4414
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4417
    :goto_0
    return-object v0

    .line 4416
    :cond_0
    new-instance v0, Landroid/view/View$ListenerInfo;

    invoke-direct {v0}, Landroid/view/View$ListenerInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4417
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    goto :goto_0
.end method

.method public final getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 10564
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 10565
    .local v0, "offset":Landroid/graphics/Point;
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10566
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 10567
    const/4 v1, 0x1

    .line 10569
    :goto_1
    return v1

    .line 10564
    .end local v0    # "offset":Landroid/graphics/Point;
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0

    .line 10569
    .restart local v0    # "offset":Landroid/graphics/Point;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getLocationInWindow([I)V
    .locals 9
    .param p1, "location"    # [I

    .prologue
    const/high16 v8, 0x3f000000

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 16064
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 16065
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 16068
    :cond_1
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v4, :cond_2

    .line 16070
    aput v6, p1, v7

    aput v6, p1, v6

    .line 16109
    :goto_0
    return-void

    .line 16074
    :cond_2
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 16075
    .local v0, "position":[F
    const/4 v4, 0x0

    aput v4, v0, v7

    aput v4, v0, v6

    .line 16077
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_3

    .line 16078
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 16081
    :cond_3
    aget v4, v0, v6

    iget v5, p0, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    .line 16082
    aget v4, v0, v7

    iget v5, p0, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 16084
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 16085
    .local v2, "viewParent":Landroid/view/ViewParent;
    :goto_1
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_5

    move-object v1, v2

    .line 16086
    check-cast v1, Landroid/view/View;

    .line 16088
    .local v1, "view":Landroid/view/View;
    aget v4, v0, v6

    iget v5, v1, Landroid/view/View;->mScrollX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v6

    .line 16089
    aget v4, v0, v7

    iget v5, v1, Landroid/view/View;->mScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v7

    .line 16091
    invoke-virtual {v1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_4

    .line 16092
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 16095
    :cond_4
    aget v4, v0, v6

    iget v5, v1, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    .line 16096
    aget v4, v0, v7

    iget v5, v1, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 16098
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 16099
    goto :goto_1

    .line 16101
    .end local v1    # "view":Landroid/view/View;
    :cond_5
    instance-of v4, v2, Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_6

    move-object v3, v2

    .line 16103
    check-cast v3, Landroid/view/ViewRootImpl;

    .line 16104
    .local v3, "vr":Landroid/view/ViewRootImpl;
    aget v4, v0, v7

    iget v5, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v7

    .line 16107
    .end local v3    # "vr":Landroid/view/ViewRootImpl;
    :cond_6
    aget v4, v0, v6

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v6

    .line 16108
    aget v4, v0, v7

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v7

    goto :goto_0
.end method

.method public getLocationOnScreen([I)V
    .locals 4
    .param p1, "location"    # [I

    .prologue
    .line 16047
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 16049
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 16050
    .local v0, "info":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 16051
    const/4 v1, 0x0

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 16052
    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 16054
    :cond_0
    return-void
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 9395
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    .line 9396
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9397
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 9399
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public final getMeasuredHeight()I
    .locals 2

    .prologue
    .line 9354
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredHeightAndState()I
    .locals 1

    .prologue
    .line 9367
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredState()I
    .locals 2

    .prologue
    .line 9378
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mMeasuredHeight:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidth()I
    .locals 2

    .prologue
    .line 9330
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidthAndState()I
    .locals 1

    .prologue
    .line 9343
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 16856
    iget v0, p0, Landroid/view/View;->mMinHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 16885
    iget v0, p0, Landroid/view/View;->mMinWidth:I

    return v0
.end method

.method public getNextFocusDownId()I
    .locals 1

    .prologue
    .line 5920
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusForwardId()I
    .locals 1

    .prologue
    .line 5941
    iget v0, p0, Landroid/view/View;->mNextFocusForwardId:I

    return v0
.end method

.method public getNextFocusLeftId()I
    .locals 1

    .prologue
    .line 5857
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    return v0
.end method

.method public getNextFocusRightId()I
    .locals 1

    .prologue
    .line 5878
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    return v0
.end method

.method public getNextFocusUpId()I
    .locals 1

    .prologue
    .line 5899
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    return v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 2

    .prologue
    .line 4498
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4499
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .prologue
    .line 15821
    iget-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    if-nez v0, :cond_0

    .line 15822
    invoke-virtual {p0}, Landroid/view/View;->computeOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    .line 15824
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getOverScrollMode()I
    .locals 1

    .prologue
    .line 17699
    iget v0, p0, Landroid/view/View;->mOverScrollMode:I

    return v0
.end method

.method public getOverlay()Landroid/view/ViewOverlay;
    .locals 2

    .prologue
    .line 14768
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_0

    .line 14769
    new-instance v0, Landroid/view/ViewOverlay;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    .line 14771
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    return-object v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 15722
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingEnd()I
    .locals 2

    .prologue
    .line 15776
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15777
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 15779
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 15733
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15734
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 15736
    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 15762
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15763
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 15765
    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method public getPaddingStart()I
    .locals 2

    .prologue
    .line 15747
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15748
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 15750
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 15711
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method public final getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 9240
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 2

    .prologue
    .line 7322
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 7323
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    .line 7324
    .local v0, "parentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7325
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7330
    .end local v0    # "parentView":Landroid/view/View;
    :goto_0
    return-object v1

    .line 7327
    .restart local v0    # "parentView":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 7330
    .end local v0    # "parentView":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPivotX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9832
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPivotY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9885
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRawLayoutDirection()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 6326
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getRawTextAlignment()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "GRAVITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TEXT_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TEXT_END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "VIEW_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "VIEW_END"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 18005
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, 0xe000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xd

    return v0
.end method

.method public getRawTextDirection()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 17779
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x1c0

    shr-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 15086
    iget-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getRight()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 10291
    iget v0, p0, Landroid/view/View;->mRight:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 11648
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f800000

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightPaddingOffset()I
    .locals 1

    .prologue
    .line 13965
    const/4 v0, 0x0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 3

    .prologue
    .line 15939
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    .line 15940
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 15941
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 15952
    .end local v1    # "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 15946
    :cond_0
    move-object v0, p0

    .line 15948
    .local v0, "parent":Landroid/view/View;
    :goto_1
    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 15949
    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v0    # "parent":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 15952
    goto :goto_0
.end method

.method public getRotation()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9594
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRotationX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9692
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRotationY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9641
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9744
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000

    goto :goto_0
.end method

.method public getScaleY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9787
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000

    goto :goto_0
.end method

.method public getScrollBarDefaultDelayBeforeFade()I
    .locals 1

    .prologue
    .line 11758
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    goto :goto_0
.end method

.method public getScrollBarFadeDuration()I
    .locals 1

    .prologue
    .line 11782
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    goto :goto_0
.end method

.method public getScrollBarSize()I
    .locals 1

    .prologue
    .line 11806
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    goto :goto_0
.end method

.method public getScrollBarStyle()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1000000
                to = "INSIDE_INSET"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2000000
                to = "OUTSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3000000
                to = "OUTSIDE_INSET"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 11865
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x3000000

    and-int/2addr v0, v1

    return v0
.end method

.method public final getScrollX()I
    .locals 1

    .prologue
    .line 9272
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method public final getScrollY()I
    .locals 1

    .prologue
    .line 9283
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 14787
    const/4 v0, 0x0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .prologue
    .line 16827
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mMinHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mMinHeight:I

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 2

    .prologue
    .line 16843
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mMinWidth:I

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .prologue
    .line 17165
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 16325
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 16354
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 16355
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextAlignment()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "GRAVITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TEXT_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TEXT_END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "VIEW_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "VIEW_END"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 18069
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0xe0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getTextDirection()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 17839
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x1c00

    shr-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public final getTop()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 10084
    iget v0, p0, Landroid/view/View;->mTop:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 11605
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 1

    .prologue
    .line 13979
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchDelegate()Landroid/view/TouchDelegate;
    .locals 1

    .prologue
    .line 8973
    iget-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method public getTouchables()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6914
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 6915
    return-object v0
.end method

.method public getTransitionAlpha()F
    .locals 1

    .prologue
    .line 10074
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000

    goto :goto_0
.end method

.method public getTranslationX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 10404
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTranslationY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 10446
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 2

    .prologue
    .line 4206
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4207
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4208
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 4209
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 4212
    .end local v0    # "cache":Landroid/view/View$ScrollabilityCache;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getVerticalScrollFactor()F
    .locals 4

    .prologue
    .line 17729
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 17730
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 17731
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17733
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17736
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    .line 17739
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    return v1
.end method

.method public getVerticalScrollbarPosition()I
    .locals 1

    .prologue
    .line 4409
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4255
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4256
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 4257
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 4258
    .local v1, "scrollBar":Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_0

    .line 4259
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 4260
    .local v2, "size":I
    if-gtz v2, :cond_0

    .line 4261
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 4267
    .end local v1    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .end local v2    # "size":I
    :cond_0
    return v2
.end method

.method public getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 1

    .prologue
    .line 11223
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 11224
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 11226
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 1

    .prologue
    .line 15924
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 15925
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 15930
    :goto_0
    return-object v0

    .line 15927
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_1

    .line 15928
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 15930
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "INVISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "GONE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 6156
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final getWidth()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 9293
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getWindowAttachCount()I
    .locals 1

    .prologue
    .line 12622
    iget v0, p0, Landroid/view/View;->mWindowAttachCount:I

    return v0
.end method

.method public getWindowId()Landroid/view/WindowId;
    .locals 3

    .prologue
    .line 12639
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    .line 12640
    const/4 v0, 0x0

    .line 12651
    :goto_0
    return-object v0

    .line 12642
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowId:Landroid/view/WindowId;

    if-nez v0, :cond_1

    .line 12644
    :try_start_0
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v1

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mIWindowId:Landroid/view/IWindowId;

    .line 12646
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Landroid/view/WindowId;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mIWindowId:Landroid/view/IWindowId;

    invoke-direct {v1, v2}, Landroid/view/WindowId;-><init>(Landroid/view/IWindowId;)V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mWindowId:Landroid/view/WindowId;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12651
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowId:Landroid/view/WindowId;

    goto :goto_0

    .line 12648
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method getWindowSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 12691
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowSystemUiVisibility()I
    .locals 1

    .prologue
    .line 17175
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 12631
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowVisibility()I
    .locals 1

    .prologue
    .line 8161
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 8181
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    .line 8183
    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v3, v4, p1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8190
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v3, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 8191
    .local v2, "insets":Landroid/graphics/Rect;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 8192
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 8193
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 8194
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 8201
    .end local v2    # "insets":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 8184
    :catch_0
    move-exception v1

    .line 8185
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 8199
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 8200
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getX()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 10357
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getY()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 10380
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hackTurnOffWindowResizeAnim(Z)V
    .locals 1
    .param p1, "off"    # Z

    .prologue
    .line 18559
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    .line 18560
    return-void
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 4735
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 4736
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4738
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 4740
    .local v0, "oldFocus":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 4741
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p0}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 4744
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1

    .line 4745
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, p0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 4748
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4749
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4751
    .end local v0    # "oldFocus":Landroid/view/View;
    :cond_2
    return-void

    .line 4738
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocus()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 4904
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 1

    .prologue
    .line 4920
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasHoveredChild()Z
    .locals 1

    .prologue
    .line 7971
    const/4 v0, 0x0

    return v0
.end method

.method final hasIdentityMatrix()Z
    .locals 1

    .prologue
    .line 9419
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    .line 9420
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9421
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v0

    .line 9423
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasOnClickListeners()Z
    .locals 2

    .prologue
    .line 4522
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4523
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasOpaqueScrollbars()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1000000

    .line 11202
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 9954
    const/4 v0, 0x1

    return v0
.end method

.method hasStaticLayer()Z
    .locals 1

    .prologue
    .line 13129
    const/4 v0, 0x1

    return v0
.end method

.method public hasTransientState()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    const/high16 v1, -0x80000000

    .line 6414
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 8069
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public includeForAccessibility()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7359
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1

    .line 7360
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 7364
    :cond_1
    return v0
.end method

.method protected initializeFadingEdge(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 4190
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 4192
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/16 v1, 0x18

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 4195
    return-void
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .locals 10
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4304
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 4306
    iget-object v3, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4308
    .local v3, "scrollabilityCache":Landroid/view/View$ScrollabilityCache;
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v6, :cond_0

    .line 4309
    new-instance v6, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v6}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 4312
    :cond_0
    const/16 v6, 0x2c

    invoke-virtual {p1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 4314
    .local v1, "fadeScrollbars":Z
    if-nez v1, :cond_1

    .line 4315
    iput v8, v3, Landroid/view/View$ScrollabilityCache;->state:I

    .line 4317
    :cond_1
    iput-boolean v1, v3, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 4320
    const/16 v6, 0x2a

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 4323
    const/16 v6, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 4328
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v6

    invoke-virtual {p1, v9, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 4332
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4333
    .local v5, "track":Landroid/graphics/drawable/Drawable;
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v5}, Landroid/widget/ScrollBarDrawable;->setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4335
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4336
    .local v4, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    .line 4337
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v4}, Landroid/widget/ScrollBarDrawable;->setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4340
    :cond_2
    const/4 v6, 0x5

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 4342
    .local v0, "alwaysDraw":Z
    if-eqz v0, :cond_3

    .line 4343
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v8}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawHorizontalTrack(Z)V

    .line 4346
    :cond_3
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4347
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v5}, Landroid/widget/ScrollBarDrawable;->setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4349
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4350
    if-eqz v4, :cond_4

    .line 4351
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v4}, Landroid/widget/ScrollBarDrawable;->setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4354
    :cond_4
    const/4 v6, 0x6

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 4356
    if-eqz v0, :cond_5

    .line 4357
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v8}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawVerticalTrack(Z)V

    .line 4361
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    .line 4362
    .local v2, "layoutDirection":I
    if-eqz v5, :cond_6

    .line 4363
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 4365
    :cond_6
    if-eqz v4, :cond_7

    .line 4366
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 4370
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 4371
    return-void
.end method

.method protected internalSetPadding(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/high16 v5, 0x1000000

    const/4 v3, 0x0

    .line 15610
    iput p1, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 15611
    iput p3, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 15612
    iput p4, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 15614
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    .line 15615
    .local v2, "viewFlags":I
    const/4 v0, 0x0

    .line 15618
    .local v0, "changed":Z
    and-int/lit16 v4, v2, 0x300

    if-eqz v4, :cond_1

    .line 15619
    and-int/lit16 v4, v2, 0x200

    if-eqz v4, :cond_0

    .line 15620
    and-int v4, v2, v5

    if-nez v4, :cond_7

    move v1, v3

    .line 15622
    .local v1, "offset":I
    :goto_0
    iget v4, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    packed-switch v4, :pswitch_data_0

    .line 15638
    .end local v1    # "offset":I
    :cond_0
    :goto_1
    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_1

    .line 15639
    and-int v4, v2, v5

    if-nez v4, :cond_9

    :goto_2
    add-int/2addr p4, v3

    .line 15644
    :cond_1
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-eq v3, p1, :cond_2

    .line 15645
    const/4 v0, 0x1

    .line 15646
    iput p1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 15648
    :cond_2
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-eq v3, p2, :cond_3

    .line 15649
    const/4 v0, 0x1

    .line 15650
    iput p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 15652
    :cond_3
    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-eq v3, p3, :cond_4

    .line 15653
    const/4 v0, 0x1

    .line 15654
    iput p3, p0, Landroid/view/View;->mPaddingRight:I

    .line 15656
    :cond_4
    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq v3, p4, :cond_5

    .line 15657
    const/4 v0, 0x1

    .line 15658
    iput p4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 15661
    :cond_5
    if-eqz v0, :cond_6

    .line 15662
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15664
    :cond_6
    return-void

    .line 15620
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v1

    goto :goto_0

    .line 15624
    .restart local v1    # "offset":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 15625
    add-int/2addr p1, v1

    goto :goto_1

    .line 15627
    :cond_8
    add-int/2addr p3, v1

    .line 15629
    goto :goto_1

    .line 15631
    :pswitch_1
    add-int/2addr p3, v1

    .line 15632
    goto :goto_1

    .line 15634
    :pswitch_2
    add-int/2addr p1, v1

    goto :goto_1

    .line 15639
    .end local v1    # "offset":I
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v3

    goto :goto_2

    .line 15622
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 11021
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 11022
    return-void
.end method

.method public invalidate(IIII)V
    .locals 9
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    const v8, 0x8000

    const/high16 v7, -0x80000000

    .line 10984
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 11012
    :cond_0
    :goto_0
    return-void

    .line 10987
    :cond_1
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-eq v5, v6, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_0

    .line 10990
    :cond_2
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10991
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10992
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10993
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10994
    .local v1, "p":Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11004
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-ge p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    .line 11005
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 11006
    .local v2, "scrollX":I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 11007
    .local v3, "scrollY":I
    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 11008
    .local v4, "tmpr":Landroid/graphics/Rect;
    sub-int v5, p1, v2

    sub-int v6, p2, v3

    sub-int v7, p3, v2

    sub-int v8, p4, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 11009
    invoke-interface {v1, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const v8, 0x8000

    const/high16 v7, -0x80000000

    .line 10941
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10970
    :cond_0
    :goto_0
    return-void

    .line 10944
    :cond_1
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-eq v5, v6, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_0

    .line 10947
    :cond_2
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10948
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10949
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10950
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10951
    .local v1, "p":Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10961
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 10962
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 10963
    .local v3, "scrollX":I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 10964
    .local v4, "scrollY":I
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10965
    .local v2, "r":Landroid/graphics/Rect;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 10967
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method invalidate(Z)V
    .locals 8
    .param p1, "invalidateCache"    # Z

    .prologue
    const v7, 0x8000

    const/4 v6, 0x0

    const/high16 v5, -0x80000000

    .line 11036
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11069
    :cond_0
    :goto_0
    return-void

    .line 11039
    :cond_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x30

    if-eq v3, v4, :cond_3

    if-eqz p1, :cond_2

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_3

    :cond_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v3

    iget-boolean v4, p0, Landroid/view/View;->mLastIsOpaque:Z

    if-eq v3, v4, :cond_0

    .line 11042
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/View;->mLastIsOpaque:Z

    .line 11043
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11044
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11045
    if-eqz p1, :cond_4

    .line 11046
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11047
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x8001

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11049
    :cond_4
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11050
    .local v0, "ai":Landroid/view/View$AttachInfo;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 11061
    .local v1, "p":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 11062
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 11063
    .local v2, "r":Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 11066
    invoke-interface {v1, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 15095
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15096
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 15097
    .local v0, "dirty":Landroid/graphics/Rect;
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 15098
    .local v1, "scrollX":I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 15100
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 15103
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_0
    return-void
.end method

.method invalidateInheritedLayoutMode(I)V
    .locals 0
    .param p1, "layoutModeOfRoot"    # I

    .prologue
    .line 12616
    return-void
.end method

.method protected invalidateParentCaches()V
    .locals 3

    .prologue
    .line 11136
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 11137
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 11139
    :cond_0
    return-void
.end method

.method protected invalidateParentIfNeeded()V
    .locals 2

    .prologue
    .line 11151
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 11152
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 11154
    :cond_0
    return-void
.end method

.method invalidateViewProperty(ZZ)V
    .locals 7
    .param p1, "invalidateParent"    # Z
    .param p2, "forceRedraw"    # Z

    .prologue
    const/4 v6, 0x0

    .line 11088
    iget-object v3, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_4

    .line 11089
    :cond_0
    if-eqz p1, :cond_1

    .line 11090
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 11092
    :cond_1
    if-eqz p2, :cond_2

    .line 11093
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11095
    :cond_2
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 11109
    :cond_3
    :goto_0
    return-void

    .line 11097
    :cond_4
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11098
    .local v0, "ai":Landroid/view/View$AttachInfo;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 11099
    .local v1, "p":Landroid/view/ViewParent;
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 11100
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 11101
    .local v2, "r":Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 11102
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 11103
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0, v2}, Landroid/view/ViewGroup;->invalidateChildFast(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 11105
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public isAccessibilityFocused()Z
    .locals 2

    .prologue
    .line 6940
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    .prologue
    .line 7628
    const/4 v0, 0x0

    return v0
.end method

.method public isActionableForAccessibility()Z
    .locals 1

    .prologue
    .line 7377
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActivated()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 15908
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x40000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 6457
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClickable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6525
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 2

    .prologue
    .line 10160
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x600000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawingCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 13343
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDuplicateParentStateEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400000

    .line 13006
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6179
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocusable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 6721
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocusableInTouchMode()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x40000

    .line 6734
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 5738
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHapticFeedbackEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x10000000

    .line 6304
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 14032
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalFadingEdgeEnabled()Z
    .locals 2

    .prologue
    .line 11532
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 2

    .prologue
    .line 11662
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHovered()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 8689
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImportantForAccessibility()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7292
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v5, 0x700000

    and-int/2addr v2, v5

    shr-int/lit8 v0, v2, 0x14

    .line 7294
    .local v0, "mode":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-ne v0, v6, :cond_1

    .line 7309
    :cond_0
    :goto_0
    return v3

    .line 7300
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7301
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_1
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 7302
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 7306
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    .line 7309
    :cond_2
    if-eq v0, v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isActionableForAccessibility()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Landroid/view/View;->hasListenersForAccessibility()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v4

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 13915
    const/4 v0, 0x0

    return v0
.end method

.method public isInLayout()Z
    .locals 2

    .prologue
    .line 16528
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 16529
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isInLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInScrollingContainer()Z
    .locals 2

    .prologue
    .line 8886
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 8887
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 8888
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8889
    const/4 v1, 0x1

    .line 8893
    :goto_1
    return v1

    .line 8891
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 8893
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isInTouchMode()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 8269
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 8270
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 8272
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->isInTouchMode()Z

    move-result v0

    goto :goto_0
.end method

.method public isLaidOut()Z
    .locals 2

    .prologue
    .line 6465
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutDirectionInherited()Z
    .locals 2

    .prologue
    .line 12460
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutDirectionResolved()Z
    .locals 2

    .prologue
    .line 12467
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutRequested()Z
    .locals 2

    .prologue
    .line 14890
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutRtl()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 6397
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongClickable()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 6552
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x1800000

    .line 11169
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 1

    .prologue
    .line 13937
    const/4 v0, 0x0

    return v0
.end method

.method public isPaddingRelative()Z
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 15792
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPaddingResolved()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000000

    .line 12476
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPressed()Z
    .locals 2

    .prologue
    .line 6615
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRootNamespace()Z
    .locals 1

    .prologue
    .line 16297
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 6628
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveFromParentEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000000

    .line 6692
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollContainer()Z
    .locals 2

    .prologue
    .line 5762
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollbarFadingEnabled()Z
    .locals 1

    .prologue
    .line 11746
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-boolean v0, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 15865
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShown()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 5961
    move-object v0, p0

    .line 5964
    .local v0, "current":Landroid/view/View;
    :cond_0
    iget v3, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_2

    .line 5977
    :cond_1
    :goto_0
    return v2

    .line 5967
    :cond_2
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5968
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_1

    .line 5971
    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_3

    .line 5972
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 5974
    check-cast v0, Landroid/view/View;

    .line 5975
    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public isSoundEffectsEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x8000000

    .line 6275
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextAlignmentInherited()Z
    .locals 1

    .prologue
    .line 18202
    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextAlignmentResolved()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 18209
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextDirectionInherited()Z
    .locals 1

    .prologue
    .line 17967
    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextDirectionResolved()Z
    .locals 2

    .prologue
    .line 17974
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalFadingEdgeEnabled()Z
    .locals 2

    .prologue
    .line 11569
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 2

    .prologue
    .line 11692
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 12160
    const/4 v0, 0x0

    return v0
.end method

.method protected isVisibleToUser()Z
    .locals 1

    .prologue
    .line 5491
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected isVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "boundInView"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 5512
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_0

    .line 5514
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v5, :cond_1

    .line 5543
    :cond_0
    :goto_0
    return v4

    .line 5519
    :cond_1
    move-object v0, p0

    .line 5520
    :goto_1
    instance-of v5, v0, Landroid/view/View;

    if-eqz v5, :cond_2

    move-object v2, v0

    .line 5521
    check-cast v2, Landroid/view/View;

    .line 5524
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpg-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTransitionAlpha()F

    move-result v5

    cmpg-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 5528
    iget-object v0, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5529
    .local v0, "current":Landroid/view/ViewParent;
    goto :goto_1

    .line 5531
    .end local v0    # "current":Landroid/view/ViewParent;
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v5, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5532
    .local v3, "visibleRect":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v5, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 5533
    .local v1, "offset":Landroid/graphics/Point;
    invoke-virtual {p0, v3, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5537
    if-eqz p1, :cond_3

    .line 5538
    iget v4, v1, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 5539
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    goto :goto_0

    .line 5541
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 15399
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 15400
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 15402
    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 17
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 14934
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 14935
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mOldWidthMeasureSpec:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mOldHeightMeasureSpec:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->onMeasure(II)V

    .line 14936
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x9

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 14939
    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mLeft:I

    .line 14940
    .local v9, "oldL":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mTop:I

    .line 14941
    .local v10, "oldT":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mBottom:I

    .line 14942
    .local v12, "oldB":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mRight:I

    .line 14944
    .local v11, "oldR":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p4}, Landroid/view/View;->setOpticalFrame(IIII)Z

    move-result v2

    .line 14947
    .local v2, "changed":Z
    :goto_0
    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_3

    :cond_1
    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 14948
    invoke-virtual/range {v1 .. v6}, Landroid/view/View;->onLayout(ZIIII)V

    .line 14949
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x2001

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14951
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 14952
    .local v14, "li":Landroid/view/View$ListenerInfo;
    if-eqz v14, :cond_3

    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 14953
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 14955
    .local v15, "listenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 14956
    .local v16, "numListeners":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    .line 14957
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnLayoutChangeListener;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-interface/range {v3 .. v12}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 14956
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 14944
    .end local v2    # "changed":Z
    .end local v13    # "i":I
    .end local v14    # "li":Landroid/view/View$ListenerInfo;
    .end local v15    # "listenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    .end local v16    # "numListeners":I
    :cond_2
    invoke-virtual/range {p0 .. p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v2

    goto :goto_0

    .line 14962
    .restart local v2    # "changed":Z
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x1001

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14963
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 14964
    return-void
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 1

    .prologue
    const/16 v0, 0x800

    .line 6141
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setFlags(II)V

    .line 6142
    return-void
.end method

.method public final measure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 16602
    invoke-static/range {p0 .. p0}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v8

    .line 16603
    .local v8, "optical":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v11}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v11

    if-eq v8, v11, :cond_2

    .line 16604
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v3

    .line 16605
    .local v3, "insets":Landroid/graphics/Insets;
    iget v11, v3, Landroid/graphics/Insets;->left:I

    iget v12, v3, Landroid/graphics/Insets;->right:I

    add-int v7, v11, v12

    .line 16606
    .local v7, "oWidth":I
    iget v11, v3, Landroid/graphics/Insets;->top:I

    iget v12, v3, Landroid/graphics/Insets;->bottom:I

    add-int v6, v11, v12

    .line 16607
    .local v6, "oHeight":I
    if-eqz v8, :cond_0

    neg-int v7, v7

    .end local v7    # "oWidth":I
    :cond_0
    move/from16 v0, p1

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->adjust(II)I

    move-result p1

    .line 16608
    if-eqz v8, :cond_1

    neg-int v6, v6

    .end local v6    # "oHeight":I
    :cond_1
    move/from16 v0, p2

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->adjust(II)I

    move-result p2

    .line 16612
    .end local v3    # "insets":Landroid/graphics/Insets;
    :cond_2
    move/from16 v0, p1

    int-to-long v11, v0

    const/16 v13, 0x20

    shl-long/2addr v11, v13

    move/from16 v0, p2

    int-to-long v13, v0

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    or-long v4, v11, v13

    .line 16613
    .local v4, "key":J
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    if-nez v11, :cond_3

    new-instance v11, Landroid/util/LongSparseLongArray;

    const/4 v12, 0x2

    invoke-direct {v11, v12}, Landroid/util/LongSparseLongArray;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    .line 16615
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v11, v11, 0x1000

    const/16 v12, 0x1000

    if-eq v11, v12, :cond_4

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mOldWidthMeasureSpec:I

    move/from16 v0, p1

    if-ne v0, v11, :cond_4

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mOldHeightMeasureSpec:I

    move/from16 v0, p2

    if-eq v0, v11, :cond_9

    .line 16620
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v11, v11, -0x801

    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/View;->mPrivateFlags:I

    .line 16622
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 16624
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v11, v11, 0x1000

    const/16 v12, 0x1000

    if-ne v11, v12, :cond_6

    const/4 v2, -0x1

    .line 16626
    .local v2, "cacheIndex":I
    :goto_0
    if-ltz v2, :cond_5

    sget-boolean v11, Landroid/view/View;->sIgnoreMeasureCache:Z

    if-eqz v11, :cond_7

    .line 16628
    :cond_5
    invoke-virtual/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    .line 16629
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v11, v11, -0x9

    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 16639
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v11, v11, 0x800

    const/16 v12, 0x800

    if-eq v11, v12, :cond_8

    .line 16640
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string/jumbo v12, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 16624
    .end local v2    # "cacheIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v11, v4, v5}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v2

    goto :goto_0

    .line 16631
    .restart local v2    # "cacheIndex":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v11, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v9

    .line 16633
    .local v9, "value":J
    const/16 v11, 0x20

    shr-long v11, v9, v11

    long-to-int v11, v11

    long-to-int v12, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 16634
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v11, v11, 0x8

    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/View;->mPrivateFlags3:I

    goto :goto_1

    .line 16645
    .end local v9    # "value":J
    :cond_8
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v11, v11, 0x2000

    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/View;->mPrivateFlags:I

    .line 16648
    .end local v2    # "cacheIndex":I
    :cond_9
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 16649
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 16651
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mMeasuredWidth:I

    int-to-long v12, v12

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mMeasuredHeight:I

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    or-long/2addr v12, v14

    invoke-virtual {v11, v4, v5, v12, v13}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 16653
    return-void
.end method

.method needGlobalAttributesUpdate(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 8251
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8252
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v1, :cond_1

    .line 8253
    if-nez p1, :cond_0

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    if-eqz v1, :cond_1

    .line 8255
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 8258
    :cond_1
    return-void
.end method

.method notifyGlobalFocusCleared(Landroid/view/View;)V
    .locals 2
    .param p1, "oldFocus"    # Landroid/view/View;

    .prologue
    .line 4870
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 4871
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 4873
    :cond_0
    return-void
.end method

.method public notifySubtreeAccessibilityStateChangedIfNeeded()V
    .locals 4

    .prologue
    const/high16 v2, 0x8000000

    .line 7427
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7442
    :cond_0
    :goto_0
    return-void

    .line 7430
    :cond_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 7431
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 7432
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 7434
    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v2, 0x1

    invoke-interface {v1, p0, p0, v2}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7436
    :catch_0
    move-exception v0

    .line 7437
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyViewAccessibilityStateChangedIfNeeded(I)V
    .locals 2
    .param p1, "changeType"    # I

    .prologue
    .line 7405
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7413
    :goto_0
    return-void

    .line 7408
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    if-nez v0, :cond_1

    .line 7409
    new-instance v0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$SendViewStateChangedAccessibilityEvent;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    .line 7412
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    invoke-virtual {v0, p1}, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->runOrPost(I)V

    goto :goto_0
.end method

.method public offsetLeftAndRight(I)V
    .locals 10
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10629
    if-eqz p1, :cond_2

    .line 10630
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10631
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move v0, v6

    .line 10633
    .local v0, "matrixIsIdentity":Z
    :goto_0
    if-eqz v0, :cond_6

    .line 10634
    iget-object v7, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v7, :cond_4

    .line 10635
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10657
    :cond_1
    :goto_1
    iget v7, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v7, p1

    iput v7, p0, Landroid/view/View;->mLeft:I

    .line 10658
    iget v7, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, p1

    iput v7, p0, Landroid/view/View;->mRight:I

    .line 10659
    iget-object v7, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v7, :cond_7

    .line 10660
    iget-object v6, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    int-to-float v7, p1

    invoke-virtual {v6, v7}, Landroid/view/DisplayList;->offsetLeftAndRight(F)V

    .line 10661
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10669
    .end local v0    # "matrixIsIdentity":Z
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v5

    .line 10631
    goto :goto_0

    .line 10637
    .restart local v0    # "matrixIsIdentity":Z
    :cond_4
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10638
    .local v3, "p":Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_1

    .line 10639
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v7, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10642
    .local v4, "r":Landroid/graphics/Rect;
    if-gez p1, :cond_5

    .line 10643
    iget v7, p0, Landroid/view/View;->mLeft:I

    add-int v2, v7, p1

    .line 10644
    .local v2, "minLeft":I
    iget v1, p0, Landroid/view/View;->mRight:I

    .line 10649
    .local v1, "maxRight":I
    :goto_3
    sub-int v7, v1, v2

    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v4, v5, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 10650
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 10646
    .end local v1    # "maxRight":I
    .end local v2    # "minLeft":I
    :cond_5
    iget v2, p0, Landroid/view/View;->mLeft:I

    .line 10647
    .restart local v2    # "minLeft":I
    iget v7, p0, Landroid/view/View;->mRight:I

    add-int v1, v7, p1

    .restart local v1    # "maxRight":I
    goto :goto_3

    .line 10654
    .end local v1    # "maxRight":I
    .end local v2    # "minLeft":I
    .end local v3    # "p":Landroid/view/ViewParent;
    .end local v4    # "r":Landroid/graphics/Rect;
    :cond_6
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_1

    .line 10663
    :cond_7
    if-nez v0, :cond_8

    .line 10664
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10666
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    goto :goto_2
.end method

.method public offsetTopAndBottom(I)V
    .locals 10
    .param p1, "offset"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 10578
    if-eqz p1, :cond_2

    .line 10579
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10580
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v8}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    move v0, v7

    .line 10582
    .local v0, "matrixIsIdentity":Z
    :goto_0
    if-eqz v0, :cond_6

    .line 10583
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v8, :cond_4

    .line 10584
    invoke-virtual {p0, v6, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10609
    :cond_1
    :goto_1
    iget v8, p0, Landroid/view/View;->mTop:I

    add-int/2addr v8, p1

    iput v8, p0, Landroid/view/View;->mTop:I

    .line 10610
    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v8, p1

    iput v8, p0, Landroid/view/View;->mBottom:I

    .line 10611
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v8, :cond_7

    .line 10612
    iget-object v7, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    int-to-float v8, p1

    invoke-virtual {v7, v8}, Landroid/view/DisplayList;->offsetTopAndBottom(F)V

    .line 10613
    invoke-virtual {p0, v6, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10621
    .end local v0    # "matrixIsIdentity":Z
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v6

    .line 10580
    goto :goto_0

    .line 10586
    .restart local v0    # "matrixIsIdentity":Z
    :cond_4
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10587
    .local v3, "p":Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_1

    .line 10588
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v8, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10592
    .local v4, "r":Landroid/graphics/Rect;
    if-gez p1, :cond_5

    .line 10593
    iget v8, p0, Landroid/view/View;->mTop:I

    add-int v2, v8, p1

    .line 10594
    .local v2, "minTop":I
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 10595
    .local v1, "maxBottom":I
    move v5, p1

    .line 10601
    .local v5, "yLoc":I
    :goto_3
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    sub-int v9, v1, v2

    invoke-virtual {v4, v6, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 10602
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 10597
    .end local v1    # "maxBottom":I
    .end local v2    # "minTop":I
    .end local v5    # "yLoc":I
    :cond_5
    iget v2, p0, Landroid/view/View;->mTop:I

    .line 10598
    .restart local v2    # "minTop":I
    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int v1, v8, p1

    .line 10599
    .restart local v1    # "maxBottom":I
    const/4 v5, 0x0

    .restart local v5    # "yLoc":I
    goto :goto_3

    .line 10606
    .end local v1    # "maxBottom":I
    .end local v2    # "minTop":I
    .end local v3    # "p":Landroid/view/ViewParent;
    .end local v4    # "r":Landroid/graphics/Rect;
    .end local v5    # "yLoc":I
    :cond_6
    invoke-virtual {p0, v6, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_1

    .line 10615
    :cond_7
    if-nez v0, :cond_8

    .line 10616
    invoke-virtual {p0, v6, v7}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10618
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    goto :goto_2
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 16987
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16988
    return-void
.end method

.method protected onAnimationStart()V
    .locals 2

    .prologue
    .line 16975
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16976
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 12236
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    .line 12237
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 12240
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 12241
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 12242
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x8000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12245
    :cond_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/view/View;->mPrivateFlags3:I

    .line 12247
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 12249
    invoke-virtual {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 12251
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12252
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 12253
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 12256
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_3

    .line 12257
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1}, Landroid/view/DisplayList;->clearDirty()V

    .line 12259
    :cond_3
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 12827
    invoke-direct {p0}, Landroid/view/View;->removePerformClickCallback()V

    .line 12828
    invoke-virtual {p0}, Landroid/view/View;->cancelLongPress()V

    .line 12829
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    .line 12830
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 8429
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 17519
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 8227
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 8515
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 8
    .param p1, "extraSpace"    # I

    .prologue
    const/high16 v7, 0x400000

    const/4 v6, 0x0

    .line 15309
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_1

    .line 15311
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 15364
    :cond_0
    :goto_0
    return-object v0

    .line 15316
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15318
    .local v2, "privateFlags":I
    const/4 v4, 0x0

    .line 15319
    .local v4, "viewStateIndex":I
    and-int/lit16 v5, v2, 0x4000

    if-eqz v5, :cond_2

    or-int/lit8 v4, v4, 0x10

    .line 15320
    :cond_2
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_3

    or-int/lit8 v4, v4, 0x8

    .line 15321
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    or-int/lit8 v4, v4, 0x4

    .line 15322
    :cond_4
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_5

    or-int/lit8 v4, v4, 0x2

    .line 15323
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_6

    or-int/lit8 v4, v4, 0x1

    .line 15324
    :cond_6
    const/high16 v5, 0x40000000

    and-int/2addr v5, v2

    if-eqz v5, :cond_7

    or-int/lit8 v4, v4, 0x20

    .line 15325
    :cond_7
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    if-eqz v5, :cond_8

    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 15330
    or-int/lit8 v4, v4, 0x40

    .line 15332
    :cond_8
    const/high16 v5, 0x10000000

    and-int/2addr v5, v2

    if-eqz v5, :cond_9

    or-int/lit16 v4, v4, 0x80

    .line 15334
    :cond_9
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 15335
    .local v3, "privateFlags2":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_a

    or-int/lit16 v4, v4, 0x100

    .line 15336
    :cond_a
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_b

    or-int/lit16 v4, v4, 0x200

    .line 15338
    :cond_b
    sget-object v5, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aget-object v0, v5, v4

    .line 15352
    .local v0, "drawableState":[I
    if-eqz p1, :cond_0

    .line 15357
    if-eqz v0, :cond_c

    .line 15358
    array-length v5, v0

    add-int/2addr v5, p1

    new-array v1, v5, [I

    .line 15359
    .local v1, "fullState":[I
    array-length v5, v0

    invoke-static {v0, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    move-object v0, v1

    .line 15364
    goto :goto_0

    .line 15361
    .end local v1    # "fullState":[I
    :cond_c
    new-array v1, p1, [I

    .restart local v1    # "fullState":[I
    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 8445
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 12559
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12560
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    .line 12562
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 12563
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 12564
    invoke-direct {p0}, Landroid/view/View;->removePerformClickCallback()V

    .line 12565
    invoke-direct {p0}, Landroid/view/View;->removeSendViewScrolledAccessibilityEventCallback()V

    .line 12567
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 12568
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->destroyLayer(Z)Z

    .line 12570
    invoke-direct {p0}, Landroid/view/View;->cleanupDraw()V

    .line 12572
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 12573
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 0
    .param p1, "hint"    # I

    .prologue
    .line 8124
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 17480
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 12209
    return-void
.end method

.method protected onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    .line 12179
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12180
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 12181
    return-void
.end method

.method protected final onDrawScrollBars(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 12036
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 12037
    .local v9, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v9, :cond_0

    .line 12039
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->state:I

    move/from16 v18, v0

    .line 12041
    .local v18, "state":I
    if-nez v18, :cond_1

    .line 12151
    .end local v18    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 12045
    .restart local v18    # "state":I
    :cond_1
    const/4 v14, 0x0

    .line 12047
    .local v14, "invalidate":Z
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_9

    .line 12049
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    if-nez v2, :cond_2

    .line 12050
    const/4 v2, 0x1

    new-array v2, v2, [F

    iput-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    .line 12053
    :cond_2
    iget-object v0, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    move-object/from16 v19, v0

    .line 12056
    .local v19, "values":[F
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v2

    sget-object v3, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v2, v3, :cond_8

    .line 12058
    const/4 v2, 0x0

    iput v2, v9, Landroid/view/View$ScrollabilityCache;->state:I

    .line 12066
    :goto_1
    const/4 v14, 0x1

    .line 12074
    .end local v19    # "values":[F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    .line 12076
    .local v22, "viewFlags":I
    move/from16 v0, v22

    and-int/lit16 v2, v0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_a

    const/4 v10, 0x1

    .line 12078
    .local v10, "drawHorizontalScrollBar":Z
    :goto_3
    move/from16 v0, v22

    and-int/lit16 v2, v0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isVerticalScrollBarHidden()Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v11, 0x1

    .line 12082
    .local v11, "drawVerticalScrollBar":Z
    :goto_4
    if-nez v11, :cond_3

    if-eqz v10, :cond_0

    .line 12083
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int v23, v2, v3

    .line 12084
    .local v23, "width":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    sub-int v12, v2, v3

    .line 12086
    .local v12, "height":I
    iget-object v4, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 12088
    .local v4, "scrollBar":Landroid/widget/ScrollBarDrawable;
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mScrollX:I

    .line 12089
    .local v15, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v16, v0

    .line 12090
    .local v16, "scrollY":I
    const/high16 v2, 0x2000000

    and-int v2, v2, v22

    if-nez v2, :cond_c

    const/4 v13, -0x1

    .line 12097
    .local v13, "inside":I
    :goto_5
    if-eqz v10, :cond_5

    .line 12098
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .line 12099
    .local v17, "size":I
    if-gtz v17, :cond_4

    .line 12100
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    .line 12103
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v24

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 12106
    if-eqz v11, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v20

    .line 12108
    .local v20, "verticalScrollBarGap":I
    :goto_6
    add-int v2, v16, v12

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v6, v2, v3

    .line 12109
    .local v6, "top":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .line 12110
    .local v5, "left":I
    add-int v2, v15, v23

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int/2addr v2, v3

    sub-int v7, v2, v20

    .line 12111
    .local v7, "right":I
    add-int v8, v6, v17

    .local v8, "bottom":I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 12112
    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 12113
    if-eqz v14, :cond_5

    .line 12114
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 12118
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    .end local v17    # "size":I
    .end local v20    # "verticalScrollBarGap":I
    :cond_5
    if-eqz v11, :cond_0

    .line 12119
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .line 12120
    .restart local v17    # "size":I
    if-gtz v17, :cond_6

    .line 12121
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    .line 12124
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 12127
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mVerticalScrollbarPosition:I

    move/from16 v21, v0

    .line 12128
    .local v21, "verticalScrollbarPosition":I
    if-nez v21, :cond_7

    .line 12129
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v21, 0x1

    .line 12132
    :cond_7
    :goto_7
    packed-switch v21, :pswitch_data_0

    .line 12135
    add-int v2, v15, v23

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int v5, v2, v3

    .line 12141
    .restart local v5    # "left":I
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingTop:I

    and-int/2addr v2, v13

    add-int v6, v16, v2

    .line 12142
    .restart local v6    # "top":I
    add-int v7, v5, v17

    .line 12143
    .restart local v7    # "right":I
    add-int v2, v16, v12

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v8, v2, v3

    .restart local v8    # "bottom":I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 12144
    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 12145
    if-eqz v14, :cond_0

    .line 12146
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    .line 12060
    .end local v4    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    .end local v10    # "drawHorizontalScrollBar":Z
    .end local v11    # "drawVerticalScrollBar":Z
    .end local v12    # "height":I
    .end local v13    # "inside":I
    .end local v15    # "scrollX":I
    .end local v16    # "scrollY":I
    .end local v17    # "size":I
    .end local v21    # "verticalScrollbarPosition":I
    .end local v22    # "viewFlags":I
    .end local v23    # "width":I
    .restart local v19    # "values":[F
    :cond_8
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/4 v3, 0x0

    aget v3, v19, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 12070
    .end local v19    # "values":[F
    :cond_9
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_2

    .line 12076
    .restart local v22    # "viewFlags":I
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 12078
    .restart local v10    # "drawHorizontalScrollBar":Z
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 12090
    .restart local v4    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .restart local v11    # "drawVerticalScrollBar":Z
    .restart local v12    # "height":I
    .restart local v15    # "scrollX":I
    .restart local v16    # "scrollY":I
    .restart local v23    # "width":I
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 12106
    .restart local v13    # "inside":I
    .restart local v17    # "size":I
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 12129
    .restart local v21    # "verticalScrollbarPosition":I
    :cond_e
    const/16 v21, 0x2

    goto :goto_7

    .line 12138
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mUserPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .restart local v5    # "left":I
    goto :goto_8

    .line 12132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    .line 12199
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12200
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 12201
    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 7858
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7861
    const/4 v0, 0x0

    .line 7863
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 15078
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .prologue
    .line 7746
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 4942
    if-eqz p1, :cond_5

    .line 4943
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4949
    :goto_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4950
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_6

    .line 4951
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4952
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 4954
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_1

    .line 4956
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 4958
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 4964
    :cond_2
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 4965
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4966
    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v2, :cond_3

    .line 4967
    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 4970
    :cond_3
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_4

    .line 4971
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v2, p0}, Landroid/view/KeyEvent$DispatcherState;->reset(Ljava/lang/Object;)V

    .line 4973
    :cond_4
    return-void

    .line 4945
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "li":Landroid/view/View$ListenerInfo;
    :cond_5
    invoke-virtual {p0, v3}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0

    .line 4959
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_2

    .line 4961
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected onFocusLost()V
    .locals 0

    .prologue
    .line 5714
    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 5715
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8571
    const/4 v0, 0x0

    return v0
.end method

.method public onHoverChanged(Z)V
    .locals 0
    .param p1, "hovered"    # Z

    .prologue
    .line 8736
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 8615
    .local v0, "action":I
    iget-boolean v3, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    if-nez v3, :cond_2

    .line 8616
    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->hasHoveredChild()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8620
    const/16 v3, 0x80

    invoke-direct {p0, v3}, Landroid/view/View;->sendAccessibilityHoverEvent(I)V

    .line 8621
    iput-boolean v1, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    .line 8637
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/view/View;->isHoverable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8638
    packed-switch v0, :pswitch_data_0

    .line 8654
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    .line 8660
    :goto_2
    return v1

    .line 8624
    :cond_2
    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8627
    :cond_3
    iput-boolean v2, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    .line 8628
    const/16 v3, 0x100

    invoke-direct {p0, v3}, Landroid/view/View;->sendAccessibilityHoverEvent(I)V

    .line 8631
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-nez v3, :cond_1

    .line 8632
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    .line 8640
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setHovered(Z)V

    goto :goto_1

    .line 8643
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setHovered(Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 8660
    goto :goto_2

    .line 8638
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5203
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 5204
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5208
    :goto_0
    return-void

    .line 5206
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5216
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 5217
    const-class v2, Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 5218
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 5219
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 5220
    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5222
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 5242
    :cond_0
    :goto_0
    return-void

    .line 5224
    :sswitch_0
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 5226
    .local v0, "focusablesTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 5227
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 5228
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 5229
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    .line 5230
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 5224
    .end local v0    # "focusablesTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 5234
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 5235
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 5236
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 5237
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 5238
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    goto :goto_0

    .line 5222
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 5313
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 5314
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5318
    :goto_0
    return-void

    .line 5316
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0
.end method

.method onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 10
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v9, -0x1

    .line 5371
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v7, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5373
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 5374
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 5376
    invoke-virtual {p0, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 5377
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 5379
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v3

    .line 5380
    .local v3, "parent":Landroid/view/ViewParent;
    instance-of v7, v3, Landroid/view/View;

    if-eqz v7, :cond_0

    .line 5381
    check-cast v3, Landroid/view/View;

    .end local v3    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 5384
    :cond_0
    iget v7, p0, Landroid/view/View;->mID:I

    if-eq v7, v9, :cond_3

    .line 5385
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 5386
    .local v4, "rootView":Landroid/view/View;
    if-nez v4, :cond_1

    .line 5387
    move-object v4, p0

    .line 5389
    :cond_1
    iget v7, p0, Landroid/view/View;->mID:I

    invoke-direct {v4, p0, v7}, Landroid/view/View;->findLabelForView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 5390
    .local v1, "label":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 5391
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;)V

    .line 5394
    :cond_2
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v7, v7, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_3

    iget v7, p0, Landroid/view/View;->mID:I

    invoke-static {v7}, Landroid/content/res/Resources;->resourceHasPackage(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5398
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Landroid/view/View;->mID:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 5399
    .local v6, "viewId":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5406
    .end local v1    # "label":Landroid/view/View;
    .end local v4    # "rootView":Landroid/view/View;
    .end local v6    # "viewId":Ljava/lang/String;
    :cond_3
    :goto_0
    iget v7, p0, Landroid/view/View;->mLabelForId:I

    if-eq v7, v9, :cond_5

    .line 5407
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 5408
    .restart local v4    # "rootView":Landroid/view/View;
    if-nez v4, :cond_4

    .line 5409
    move-object v4, p0

    .line 5411
    :cond_4
    iget v7, p0, Landroid/view/View;->mLabelForId:I

    invoke-direct {v4, p0, v7}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 5412
    .local v2, "labeled":Landroid/view/View;
    if-eqz v2, :cond_5

    .line 5413
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    .line 5417
    .end local v2    # "labeled":Landroid/view/View;
    .end local v4    # "rootView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 5419
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 5420
    const-class v7, Landroid/view/View;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 5421
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5423
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 5424
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 5425
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 5426
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 5427
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 5428
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 5429
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 5430
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 5435
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5436
    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5438
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 5439
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 5440
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5446
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v7

    if-nez v7, :cond_b

    .line 5447
    const/16 v7, 0x40

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5452
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5453
    const/16 v7, 0x10

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5456
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 5457
    const/16 v7, 0x20

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5460
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v5

    .line 5461
    .local v5, "text":Ljava/lang/CharSequence;
    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 5462
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    .line 5464
    const/high16 v7, 0x20000

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5465
    const/16 v7, 0x100

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5466
    const/16 v7, 0x200

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5467
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 5471
    :cond_9
    return-void

    .line 5442
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_a
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1

    .line 5449
    :cond_b
    const/16 v7, 0x80

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_2

    .line 5400
    .restart local v1    # "label":Landroid/view/View;
    .restart local v4    # "rootView":Landroid/view/View;
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v4, 0x200000

    const/4 v1, 0x1

    .line 8318
    const/4 v0, 0x0

    .line 8320
    .local v0, "result":Z
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8321
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 8333
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    .line 8325
    .restart local v0    # "result":Z
    :cond_1
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 8328
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 8329
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/view/View;->checkForLongClick(I)V

    move v0, v1

    .line 8330
    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8345
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8393
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8300
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8408
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 8362
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8363
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 8364
    const/4 v0, 0x1

    .line 8376
    :cond_0
    :goto_0
    return v0

    .line 8366
    :cond_1
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8367
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 8369
    iget-boolean v1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v1, :cond_0

    .line 8371
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8372
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 14980
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 16702
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 16704
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 17688
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5161
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 5162
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5166
    :goto_0
    return-void

    .line 5164
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5174
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 15203
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 12952
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12953
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 12954
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state class, expecting View State but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead. This usually happens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "when two views of different type have the same id in the same hierarchy. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "This view\'s id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "other views do not use the same id."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12960
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 12366
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 12894
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12895
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public onScreenStateChanged(I)V
    .locals 0
    .param p1, "screenState"    # I

    .prologue
    .line 12325
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/4 v2, 0x1

    .line 9176
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9177
    invoke-direct {p0}, Landroid/view/View;->postSendViewScrolledAccessibilityEventCallback()V

    .line 9180
    :cond_0
    iput-boolean v2, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 9182
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 9183
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 9184
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 9186
    :cond_1
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 17002
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 9221
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .prologue
    .line 7730
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 7731
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7732
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v12, 0x4000

    const/4 v11, 0x0

    const/high16 v10, 0x200000

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 8756
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    .line 8758
    .local v3, "viewFlags":I
    and-int/lit8 v8, v3, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_3

    .line 8759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v7, :cond_0

    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_0

    .line 8760
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 8764
    :cond_0
    and-int/lit16 v8, v3, 0x4000

    if-eq v8, v12, :cond_1

    and-int v8, v3, v10

    if-ne v8, v10, :cond_2

    :cond_1
    move v6, v7

    .line 8879
    :cond_2
    :goto_0
    return v6

    .line 8768
    :cond_3
    iget-object v8, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-eqz v8, :cond_4

    .line 8769
    iget-object v8, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v8, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v6, v7

    .line 8770
    goto :goto_0

    .line 8774
    :cond_4
    and-int/lit16 v8, v3, 0x4000

    if-eq v8, v12, :cond_5

    and-int v8, v3, v10

    if-ne v8, v10, :cond_2

    .line 8776
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_6
    :goto_1
    move v6, v7

    .line 8876
    goto :goto_0

    .line 8778
    :pswitch_0
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x2000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_e

    move v2, v7

    .line 8779
    .local v2, "prepressed":Z
    :goto_2
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_7

    if-eqz v2, :cond_6

    .line 8782
    :cond_7
    const/4 v0, 0x0

    .line 8783
    .local v0, "focusTaken":Z
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_8

    .line 8784
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 8787
    :cond_8
    if-eqz v2, :cond_9

    .line 8792
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 8795
    :cond_9
    iget-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v6, :cond_b

    .line 8797
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8800
    if-nez v0, :cond_b

    .line 8804
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-nez v6, :cond_a

    .line 8805
    new-instance v6, Landroid/view/View$PerformClick;

    invoke-direct {v6, p0, v11}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    .line 8807
    :cond_a
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 8808
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 8813
    :cond_b
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-nez v6, :cond_c

    .line 8814
    new-instance v6, Landroid/view/View$UnsetPressedState;

    invoke-direct {v6, p0, v11}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    .line 8817
    :cond_c
    if-eqz v2, :cond_f

    .line 8818
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8824
    :cond_d
    :goto_3
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto :goto_1

    .end local v0    # "focusTaken":Z
    .end local v2    # "prepressed":Z
    :cond_e
    move v2, v6

    .line 8778
    goto :goto_2

    .line 8820
    .restart local v0    # "focusTaken":Z
    .restart local v2    # "prepressed":Z
    :cond_f
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 8822
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {v6}, Landroid/view/View$UnsetPressedState;->run()V

    goto :goto_3

    .line 8829
    .end local v0    # "focusTaken":Z
    .end local v2    # "prepressed":Z
    :pswitch_1
    iput-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 8831
    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 8836
    invoke-virtual {p0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v1

    .line 8840
    .local v1, "isInScrollingContainer":Z
    if-eqz v1, :cond_11

    .line 8841
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v8, 0x2000000

    or-int/2addr v6, v8

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8842
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-nez v6, :cond_10

    .line 8843
    new-instance v6, Landroid/view/View$CheckForTap;

    invoke-direct {v6, p0, v11}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 8845
    :cond_10
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 8848
    :cond_11
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 8849
    invoke-direct {p0, v6}, Landroid/view/View;->checkForLongClick(I)V

    goto/16 :goto_1

    .line 8854
    .end local v1    # "isInScrollingContainer":Z
    :pswitch_2
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 8855
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 8856
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto/16 :goto_1

    .line 8860
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 8861
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 8864
    .local v5, "y":I
    int-to-float v8, v4

    int-to-float v9, v5

    iget v10, p0, Landroid/view/View;->mTouchSlop:I

    int-to-float v10, v10

    invoke-virtual {p0, v8, v9, v10}, Landroid/view/View;->pointInView(FFF)Z

    move-result v8

    if-nez v8, :cond_6

    .line 8866
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 8867
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_6

    .line 8869
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8871
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_1

    .line 8776
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8530
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 8092
    if-nez p2, :cond_0

    .line 8093
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 8094
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 8099
    :cond_0
    :goto_0
    return-void

    .line 8096
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 8045
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 8046
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_3

    .line 8047
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8048
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 8050
    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8051
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 8053
    :cond_1
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8054
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 8055
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 8059
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8060
    return-void

    .line 8056
    :cond_3
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 8057
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 17187
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 8149
    if-nez p1, :cond_0

    .line 8150
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 8152
    :cond_0
    return-void
.end method

.method public outputDirtyFlags(Ljava/lang/String;ZI)V
    .locals 8
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "clear"    # Z
    .param p3, "clearMask"    # I

    .prologue
    .line 13354
    const-string v4, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "             DIRTY("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x600000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") DRAWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CACHE_VALID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") INVALIDATED("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13358
    if-eqz p2, :cond_0

    .line 13359
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, p3

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13361
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v3, p0

    .line 13362
    check-cast v3, Landroid/view/ViewGroup;

    .line 13363
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 13364
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13365
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 13366
    .local v0, "child":Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2, p3}, Landroid/view/View;->outputDirtyFlags(Ljava/lang/String;ZI)V

    .line 13364
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13369
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 16
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 17627
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mOverScrollMode:I

    .line 17628
    .local v10, "overScrollMode":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_7

    const/4 v2, 0x1

    .line 17630
    .local v2, "canScrollHorizontal":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_8

    const/4 v3, 0x1

    .line 17632
    .local v3, "canScrollVertical":Z
    :goto_1
    if-eqz v10, :cond_0

    const/4 v14, 0x1

    if-ne v10, v14, :cond_9

    if-eqz v2, :cond_9

    :cond_0
    const/4 v9, 0x1

    .line 17634
    .local v9, "overScrollHorizontal":Z
    :goto_2
    if-eqz v10, :cond_1

    const/4 v14, 0x1

    if-ne v10, v14, :cond_a

    if-eqz v3, :cond_a

    :cond_1
    const/4 v11, 0x1

    .line 17637
    .local v11, "overScrollVertical":Z
    :goto_3
    add-int v7, p3, p1

    .line 17638
    .local v7, "newScrollX":I
    if-nez v9, :cond_2

    .line 17639
    const/16 p7, 0x0

    .line 17642
    :cond_2
    add-int v8, p4, p2

    .line 17643
    .local v8, "newScrollY":I
    if-nez v11, :cond_3

    .line 17644
    const/16 p8, 0x0

    .line 17648
    :cond_3
    move/from16 v0, p7

    neg-int v6, v0

    .line 17649
    .local v6, "left":I
    add-int v12, p7, p5

    .line 17650
    .local v12, "right":I
    move/from16 v0, p8

    neg-int v13, v0

    .line 17651
    .local v13, "top":I
    add-int v1, p8, p6

    .line 17653
    .local v1, "bottom":I
    const/4 v4, 0x0

    .line 17654
    .local v4, "clampedX":Z
    if-le v7, v12, :cond_b

    .line 17655
    move v7, v12

    .line 17656
    const/4 v4, 0x1

    .line 17662
    :cond_4
    :goto_4
    const/4 v5, 0x0

    .line 17663
    .local v5, "clampedY":Z
    if-le v8, v1, :cond_c

    .line 17664
    move v8, v1

    .line 17665
    const/4 v5, 0x1

    .line 17671
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v4, v5}, Landroid/view/View;->onOverScrolled(IIZZ)V

    .line 17673
    if-nez v4, :cond_6

    if-eqz v5, :cond_d

    :cond_6
    const/4 v14, 0x1

    :goto_6
    return v14

    .line 17628
    .end local v1    # "bottom":I
    .end local v2    # "canScrollHorizontal":Z
    .end local v3    # "canScrollVertical":Z
    .end local v4    # "clampedX":Z
    .end local v5    # "clampedY":Z
    .end local v6    # "left":I
    .end local v7    # "newScrollX":I
    .end local v8    # "newScrollY":I
    .end local v9    # "overScrollHorizontal":Z
    .end local v11    # "overScrollVertical":Z
    .end local v12    # "right":I
    .end local v13    # "top":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 17630
    .restart local v2    # "canScrollHorizontal":Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .line 17632
    .restart local v3    # "canScrollVertical":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    .line 17634
    .restart local v9    # "overScrollHorizontal":Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .line 17657
    .restart local v1    # "bottom":I
    .restart local v4    # "clampedX":Z
    .restart local v6    # "left":I
    .restart local v7    # "newScrollX":I
    .restart local v8    # "newScrollY":I
    .restart local v11    # "overScrollVertical":Z
    .restart local v12    # "right":I
    .restart local v13    # "top":I
    :cond_b
    if-ge v7, v6, :cond_4

    .line 17658
    move v7, v6

    .line 17659
    const/4 v4, 0x1

    goto :goto_4

    .line 17666
    .restart local v5    # "clampedY":Z
    :cond_c
    if-ge v8, v13, :cond_5

    .line 17667
    move v8, v13

    .line 17668
    const/4 v5, 0x1

    goto :goto_5

    .line 17673
    :cond_d
    const/4 v14, 0x0

    goto :goto_6
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 7467
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 7468
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 7470
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 7480
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v5, v6

    .line 7568
    :cond_1
    :goto_0
    return v5

    .line 7482
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7483
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 7488
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7489
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    goto :goto_0

    .line 7494
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_0

    .line 7497
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 7498
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v5

    goto :goto_0

    .line 7502
    :sswitch_3
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7503
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 7504
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    goto :goto_0

    .line 7508
    :sswitch_4
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-nez v7, :cond_0

    .line 7509
    invoke-virtual {p0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 7510
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v5

    goto :goto_0

    .line 7514
    :sswitch_5
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7515
    invoke-virtual {p0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 7516
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    goto :goto_0

    .line 7520
    :sswitch_6
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v5

    if-nez v5, :cond_0

    .line 7521
    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    move-result v5

    goto :goto_0

    .line 7525
    :sswitch_7
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7526
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    goto :goto_0

    .line 7531
    :sswitch_8
    if-eqz p2, :cond_0

    .line 7532
    const-string v6, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 7534
    .local v2, "granularity":I
    const-string v6, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 7536
    .local v1, "extendSelection":Z
    invoke-direct {p0, v2, v5, v1}, Landroid/view/View;->traverseAtGranularity(IZZ)Z

    move-result v5

    goto :goto_0

    .line 7540
    .end local v1    # "extendSelection":Z
    .end local v2    # "granularity":I
    :sswitch_9
    if-eqz p2, :cond_0

    .line 7541
    const-string v5, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 7543
    .restart local v2    # "granularity":I
    const-string v5, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 7545
    .restart local v1    # "extendSelection":Z
    invoke-direct {p0, v2, v6, v1}, Landroid/view/View;->traverseAtGranularity(IZZ)Z

    move-result v5

    goto/16 :goto_0

    .line 7549
    .end local v1    # "extendSelection":Z
    .end local v2    # "granularity":I
    :sswitch_a
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v4

    .line 7550
    .local v4, "text":Ljava/lang/CharSequence;
    if-nez v4, :cond_2

    move v5, v6

    .line 7551
    goto/16 :goto_0

    .line 7553
    :cond_2
    if-eqz p2, :cond_5

    const-string v7, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p2, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 7555
    .local v3, "start":I
    :goto_1
    if-eqz p2, :cond_3

    const-string v7, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p2, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7558
    .local v0, "end":I
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v7

    if-ne v7, v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result v7

    if-eq v7, v0, :cond_0

    :cond_4
    if-ne v3, v0, :cond_0

    .line 7561
    invoke-virtual {p0, v3, v0}, Landroid/view/View;->setAccessibilitySelection(II)V

    .line 7562
    invoke-virtual {p0, v6}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto/16 :goto_0

    .end local v0    # "end":I
    .end local v3    # "start":I
    :cond_5
    move v3, v0

    .line 7553
    goto :goto_1

    .line 7480
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_4
        0x8 -> :sswitch_5
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x20000 -> :sswitch_a
    .end sparse-switch
.end method

.method protected performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 4626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->showContextMenu(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4627
    const/4 v0, 0x1

    .line 4630
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4564
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4566
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4567
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_0

    .line 4568
    invoke-virtual {p0, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 4569
    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4573
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 4
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    const/high16 v2, 0x4000000

    const/4 v3, 0x1

    .line 8238
    and-int/lit8 v1, p2, 0xc

    if-nez v1, :cond_1

    .line 8239
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 8240
    iput-boolean v3, p1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 8242
    :cond_0
    iget v1, p1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v2, p0, Landroid/view/View;->mSystemUiVisibility:I

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 8243
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 8244
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1

    # getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$1100(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8245
    iput-boolean v3, p1, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 8248
    .end local v0    # "li":Landroid/view/View$ListenerInfo;
    :cond_1
    return-void
.end method

.method public performHapticFeedback(I)Z
    .locals 1
    .param p1, "feedbackConstant"    # I

    .prologue
    .line 17076
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(II)Z
    .locals 3
    .param p1, "feedbackConstant"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 17089
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_1

    .line 17097
    :cond_0
    :goto_0
    return v0

    .line 17093
    :cond_1
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17097
    :cond_2
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-interface {v1, p1, v0}, Landroid/view/View$AttachInfo$Callbacks;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    .line 4600
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4602
    const/4 v0, 0x0

    .line 4603
    .local v0, "handled":Z
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4604
    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v2, :cond_0

    .line 4605
    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 4607
    :cond_0
    if-nez v0, :cond_1

    .line 4608
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    .line 4610
    :cond_1
    if-eqz v0, :cond_2

    .line 4611
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4613
    :cond_2
    return v0
.end method

.method public playSoundEffect(I)V
    .locals 1
    .param p1, "soundConstant"    # I

    .prologue
    .line 17054
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 17058
    :cond_0
    :goto_0
    return-void

    .line 17057
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    invoke-interface {v0, p1}, Landroid/view/View$AttachInfo$Callbacks;->playSoundEffect(I)V

    goto :goto_0
.end method

.method final pointInView(FF)Z
    .locals 3
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    const/4 v2, 0x0

    .line 10500
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pointInView(FFF)Z
    .locals 2
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    .line 10513
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 11243
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11244
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 11245
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 11249
    :goto_0
    return v1

    .line 11248
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    .line 11249
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 11272
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11273
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 11274
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .line 11278
    :goto_0
    return v1

    .line 11277
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 11278
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 2

    .prologue
    .line 11365
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 11366
    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 11385
    const-wide/16 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 11386
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .locals 2
    .param p1, "delayMilliseconds"    # J

    .prologue
    .line 11404
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11405
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 11406
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInvalidateDelayed(Landroid/view/View;J)V

    .line 11408
    :cond_0
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .locals 3
    .param p1, "delayMilliseconds"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    .line 11433
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11434
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 11435
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->obtain()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .line 11436
    .local v1, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 11437
    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 11438
    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 11439
    iput p5, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 11440
    iput p6, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 11442
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V

    .line 11444
    .end local v1    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_0
    return-void
.end method

.method public postInvalidateOnAnimation()V
    .locals 2

    .prologue
    .line 11458
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11459
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 11460
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->dispatchInvalidateOnAnimation(Landroid/view/View;)V

    .line 11462
    :cond_0
    return-void
.end method

.method public postInvalidateOnAnimation(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 11482
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11483
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 11484
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->obtain()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .line 11485
    .local v1, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 11486
    iput p1, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 11487
    iput p2, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 11488
    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 11489
    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 11491
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    .line 11493
    .end local v1    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_0
    return-void
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 11291
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11292
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 11293
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 11299
    :goto_0
    return-void

    .line 11297
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public postOnAnimationDelayed(Ljava/lang/Runnable;J)V
    .locals 7
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 11314
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11315
    .local v6, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v6, :cond_0

    .line 11316
    iget-object v0, v6, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 11322
    :goto_0
    return-void

    .line 11320
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method protected recomputePadding()V
    .locals 4

    .prologue
    .line 11716
    iget v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v3, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 11717
    return-void
.end method

.method public refreshDrawableState()V
    .locals 2

    .prologue
    .line 15264
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15265
    invoke-virtual {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 15267
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 15268
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 15269
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childDrawableStateChanged(Landroid/view/View;)V

    .line 15271
    :cond_0
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x1

    .line 11340
    if-eqz p1, :cond_0

    .line 11341
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11342
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 11343
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11344
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 11351
    .end local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_0
    :goto_0
    return v3

    .line 11348
    .restart local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_1
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnAttachStateChangeListener;

    .prologue
    .line 4485
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4486
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4490
    :cond_0
    :goto_0
    return-void

    .line 4489
    :cond_1
    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 4451
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4452
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4456
    :cond_0
    :goto_0
    return-void

    .line 4455
    :cond_1
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestAccessibilityFocus()Z
    .locals 5

    .prologue
    const/high16 v4, 0x4000000

    const/4 v2, 0x0

    .line 6958
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 6959
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6975
    :cond_0
    :goto_0
    return v2

    .line 6962
    :cond_1
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    .line 6965
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 6966
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v2, v4

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6967
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 6968
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    .line 6969
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6971
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6972
    const v2, 0x8000

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 6973
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .prologue
    .line 6131
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 6132
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestFitSystemWindows()V

    .line 6134
    :cond_0
    return-void
.end method

.method public final requestFocus()Z
    .locals 1

    .prologue
    .line 7055
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 7076
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 7109
    invoke-direct {p0, p1, p2}, Landroid/view/View;->requestFocusNoSearch(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public final requestFocusFromTouch()Z
    .locals 2

    .prologue
    .line 7146
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7147
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 7148
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 7149
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 7152
    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_0
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    return v1
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 16544
    iget-object v1, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->clear()V

    .line 16546
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    if-nez v1, :cond_3

    .line 16549
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 16550
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isInLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16551
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->requestLayoutDuringLayout(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 16567
    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_1
    :goto_0
    return-void

    .line 16555
    .restart local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p0, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    .line 16558
    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16559
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16561
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_4

    .line 16562
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 16564
    :cond_4
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    if-ne v1, p0, :cond_1

    .line 16565
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 4765
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 9
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    .line 4784
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v5, :cond_1

    .line 4785
    const/4 v4, 0x0

    .line 4820
    :cond_0
    return v4

    .line 4788
    :cond_1
    move-object v0, p0

    .line 4790
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4791
    .local v3, "position":Landroid/graphics/RectF;
    :goto_0
    invoke-virtual {v3, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4793
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4794
    .local v1, "parent":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .line 4795
    .local v4, "scrolled":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 4796
    iget v5, v3, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 4799
    invoke-interface {v1, v0, p1, p2}, Landroid/view/ViewParent;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v4, v5

    .line 4802
    invoke-virtual {v0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4803
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4806
    :cond_2
    iget v5, v0, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    iget v6, v0, Landroid/view/View;->mTop:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 4808
    instance-of v5, v1, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v2, v1

    .line 4812
    check-cast v2, Landroid/view/View;

    .line 4814
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 4816
    move-object v0, v2

    .line 4817
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 4818
    goto :goto_1

    .line 4790
    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local v2    # "parentView":Landroid/view/View;
    .end local v3    # "position":Landroid/graphics/RectF;
    .end local v4    # "scrolled":Z
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    goto :goto_0
.end method

.method public resetPaddingToInitialValues()V
    .locals 1

    .prologue
    .line 15803
    invoke-direct {p0}, Landroid/view/View;->isRtlCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15804
    iget v0, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 15805
    iget v0, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 15815
    :goto_0
    return-void

    .line 15808
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15809
    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    :goto_1
    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 15810
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    :goto_2
    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0

    .line 15809
    :cond_1
    iget v0, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    goto :goto_1

    .line 15810
    :cond_2
    iget v0, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    goto :goto_2

    .line 15812
    :cond_3
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    :goto_3
    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 15813
    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v0, :cond_5

    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    :goto_4
    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0

    .line 15812
    :cond_4
    iget v0, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    goto :goto_3

    .line 15813
    :cond_5
    iget v0, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    goto :goto_4
.end method

.method protected resetResolvedDrawables()V
    .locals 2

    .prologue
    .line 15209
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 15210
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .locals 1

    .prologue
    .line 12451
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, -0x31

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 12452
    return-void
.end method

.method public resetResolvedPadding()V
    .locals 2

    .prologue
    .line 12549
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 12550
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .locals 2

    .prologue
    .line 18191
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0xf0001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 18193
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 18194
    return-void
.end method

.method public resetResolvedTextDirection()V
    .locals 1

    .prologue
    .line 17956
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, -0x1e01

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17958
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17959
    return-void
.end method

.method public resetRtlProperties()V
    .locals 0

    .prologue
    .line 12301
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 12302
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 12303
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 12304
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 12305
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 12306
    return-void
.end method

.method resetSubtreeAccessibilityStateChanged()V
    .locals 2

    .prologue
    .line 7449
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 7450
    return-void
.end method

.method protected resolveDrawables()V
    .locals 3

    .prologue
    .line 15175
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 15188
    :goto_0
    return-void

    .line 15180
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 15183
    .local v0, "layoutDirection":I
    :goto_1
    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 15184
    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 15186
    :cond_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v2, 0x40000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 15187
    invoke-virtual {p0, v0}, Landroid/view/View;->onResolveDrawables(I)V

    goto :goto_0

    .line 15180
    .end local v0    # "layoutDirection":I
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    goto :goto_1
.end method

.method public resolveLayoutDirection()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 12378
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v3, v3, -0x31

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 12380
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12382
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v3, v3, 0xc

    shr-int/lit8 v3, v3, 0x2

    packed-switch v3, :pswitch_data_0

    .line 12416
    :cond_0
    :goto_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    move v1, v2

    .line 12417
    :cond_1
    return v1

    .line 12387
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12391
    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3}, Landroid/view/ViewParent;->isLayoutDirectionResolved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12393
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 12394
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12396
    :catch_0
    move-exception v0

    .line 12397
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not fully implement ViewParent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 12402
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :pswitch_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 12405
    :pswitch_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 12407
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 12382
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public resolveLayoutParams()V
    .locals 2

    .prologue
    .line 10718
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    .line 10719
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$LayoutParams;->resolveLayoutDirection(I)V

    .line 10721
    :cond_0
    return-void
.end method

.method public resolvePadding()V
    .locals 6

    .prologue
    const/high16 v3, -0x80000000

    .line 12486
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 12488
    .local v1, "resolvedLayoutDirection":I
    invoke-direct {p0}, Landroid/view/View;->isRtlCompatibilityMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 12493
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/view/View;->mRightPaddingDefined:Z

    if-nez v2, :cond_3

    .line 12494
    :cond_0
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 12495
    .local v0, "padding":Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 12496
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "padding":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12497
    .restart local v0    # "padding":Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 12499
    :cond_1
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 12500
    iget-boolean v2, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    if-nez v2, :cond_2

    .line 12501
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 12503
    :cond_2
    iget-boolean v2, p0, Landroid/view/View;->mRightPaddingDefined:Z

    if-nez v2, :cond_3

    .line 12504
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 12507
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 12522
    iget v2, p0, Landroid/view/View;->mUserPaddingStart:I

    if-eq v2, v3, :cond_7

    .line 12523
    iget v2, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 12527
    :goto_0
    iget v2, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-eq v2, v3, :cond_8

    .line 12528
    iget v2, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 12534
    :goto_1
    iget v2, p0, Landroid/view/View;->mUserPaddingBottom:I

    if-ltz v2, :cond_9

    iget v2, p0, Landroid/view/View;->mUserPaddingBottom:I

    :goto_2
    iput v2, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 12537
    :cond_4
    iget v2, p0, Landroid/view/View;->mUserPaddingLeft:I

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v5, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 12538
    invoke-virtual {p0, v1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 12540
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 12541
    return-void

    .line 12509
    :pswitch_0
    iget v2, p0, Landroid/view/View;->mUserPaddingStart:I

    if-eq v2, v3, :cond_5

    .line 12510
    iget v2, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 12514
    :goto_3
    iget v2, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-eq v2, v3, :cond_6

    .line 12515
    iget v2, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_1

    .line 12512
    :cond_5
    iget v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_3

    .line 12517
    :cond_6
    iget v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_1

    .line 12525
    :cond_7
    iget v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_0

    .line 12530
    :cond_8
    iget v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_1

    .line 12534
    :cond_9
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_2

    .line 12507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public resolveRtlPropertiesIfNeeded()Z
    .locals 1

    .prologue
    .line 12269
    invoke-direct {p0}, Landroid/view/View;->needRtlPropertiesResolution()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 12292
    :goto_0
    return v0

    .line 12272
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12273
    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 12274
    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 12277
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isTextDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12278
    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()Z

    .line 12280
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isTextAlignmentResolved()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12281
    invoke-virtual {p0}, Landroid/view/View;->resolveTextAlignment()Z

    .line 12285
    :cond_3
    invoke-direct {p0}, Landroid/view/View;->isDrawablesResolved()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12286
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 12288
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12289
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 12291
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 12292
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resolveTextAlignment()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v7, 0x20000

    .line 18082
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    const v6, -0xf0001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 18084
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 18086
    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v2

    .line 18087
    .local v2, "textAlignment":I
    packed-switch v2, :pswitch_data_0

    .line 18148
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v7

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 18156
    .end local v2    # "textAlignment":I
    :goto_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v5, 0x10000

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    move v3, v4

    .line 18157
    :goto_1
    return v3

    .line 18090
    .restart local v2    # "textAlignment":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->canResolveTextAlignment()Z

    move-result v5

    if-nez v5, :cond_0

    .line 18092
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v4, v7

    iput v4, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1

    .line 18099
    :cond_0
    :try_start_0
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5}, Landroid/view/ViewParent;->isTextAlignmentResolved()Z

    move-result v5

    if-nez v5, :cond_1

    .line 18100
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags2:I
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 18104
    :catch_0
    move-exception v0

    .line 18105
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18107
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v5, 0x30000

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    move v3, v4

    .line 18109
    goto :goto_1

    .line 18114
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3}, Landroid/view/ViewParent;->getTextAlignment()I
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 18120
    .local v1, "parentResolvedTextAlignment":I
    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 18134
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v7

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 18115
    .end local v1    # "parentResolvedTextAlignment":I
    :catch_1
    move-exception v0

    .line 18116
    .restart local v0    # "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18118
    const/4 v1, 0x1

    .restart local v1    # "parentResolvedTextAlignment":I
    goto :goto_2

    .line 18129
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :pswitch_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v5, v1, 0x11

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_0

    .line 18144
    .end local v1    # "parentResolvedTextAlignment":I
    :pswitch_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v5, v2, 0x11

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_0

    .line 18152
    .end local v2    # "textAlignment":I
    :cond_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v7

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_0

    .line 18087
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 18120
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public resolveTextDirection()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17851
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v5, v5, -0x1e01

    iput v5, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17853
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 17855
    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v2

    .line 17856
    .local v2, "textDirection":I
    packed-switch v2, :pswitch_data_0

    .line 17913
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17921
    .end local v2    # "textDirection":I
    :goto_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    move v3, v4

    .line 17922
    :goto_1
    return v3

    .line 17858
    .restart local v2    # "textDirection":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->canResolveTextDirection()Z

    move-result v5

    if-nez v5, :cond_0

    .line 17860
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1

    .line 17867
    :cond_0
    :try_start_0
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5}, Landroid/view/ViewParent;->isTextDirectionResolved()Z

    move-result v5

    if-nez v5, :cond_1

    .line 17868
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/view/View;->mPrivateFlags2:I
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 17872
    :catch_0
    move-exception v0

    .line 17873
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17875
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x600

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    move v3, v4

    .line 17877
    goto :goto_1

    .line 17883
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3}, Landroid/view/ViewParent;->getTextDirection()I
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 17889
    .local v1, "parentResolvedDirection":I
    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 17900
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 17884
    .end local v1    # "parentResolvedDirection":I
    :catch_1
    move-exception v0

    .line 17885
    .restart local v0    # "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17887
    const/4 v1, 0x3

    .restart local v1    # "parentResolvedDirection":I
    goto :goto_2

    .line 17895
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :pswitch_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v5, v1, 0xa

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_0

    .line 17909
    .end local v1    # "parentResolvedDirection":I
    :pswitch_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v5, v2, 0xa

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_0

    .line 17917
    .end local v2    # "textDirection":I
    :cond_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_0

    .line 17856
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 17889
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12908
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 12909
    return-void
.end method

.method rootViewRequestFocus()Z
    .locals 2

    .prologue
    .line 4876
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 4877
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12842
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 12843
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 8
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 15114
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 15115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v6, p3, v0

    .line 15116
    .local v6, "delay":J
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 15117
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    invoke-static {v6, v7}, Landroid/view/Choreographer;->subtractFrameDelay(J)J

    move-result-wide v4

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 15124
    .end local v6    # "delay":J
    :cond_0
    :goto_0
    return-void

    .line 15121
    .restart local v6    # "delay":J
    :cond_1
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p2, v6, v7}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 10752
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 10753
    return-void
.end method

.method public scrollTo(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 10731
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, p2, :cond_1

    .line 10732
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 10733
    .local v0, "oldX":I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 10734
    .local v1, "oldY":I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 10735
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 10736
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 10737
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 10738
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10739
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 10742
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    :cond_1
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 5004
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5012
    :goto_0
    return-void

    .line 5007
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_1

    .line 5008
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    goto :goto_0

    .line 5010
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    goto :goto_0
.end method

.method sendAccessibilityEventInternal(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 5040
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5041
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5043
    :cond_0
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5061
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 5062
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5066
    :goto_0
    return-void

    .line 5064
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5074
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5084
    :goto_0
    return-void

    .line 5077
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5079
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x2a1bf

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 5080
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 5083
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;

    .prologue
    .line 5568
    iput-object p1, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 5569
    return-void
.end method

.method public setAccessibilityLiveRegion(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 7226
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 7227
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x1800001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 7228
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x17

    const/high16 v2, 0x1800000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 7230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 7233
    :cond_0
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 7649
    if-ne p1, p2, :cond_0

    iget v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    if-ne p2, v0, :cond_0

    .line 7658
    :goto_0
    return-void

    .line 7652
    :cond_0
    if-ltz p1, :cond_1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 7653
    iput p1, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    .line 7657
    :goto_1
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 7655
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    goto :goto_1
.end method

.method public setActivated(Z)V
    .locals 5
    .param p1, "activated"    # Z

    .prologue
    const/high16 v0, 0x40000000

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 15883
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    if-eq v2, p1, :cond_0

    .line 15884
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x40000001

    and-int/2addr v2, v4

    if-eqz p1, :cond_2

    :goto_1
    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15885
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 15886
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 15887
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetActivated(Z)V

    .line 15889
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 15883
    goto :goto_0

    :cond_2
    move v0, v1

    .line 15884
    goto :goto_1
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    const/4 v2, 0x1

    .line 9986
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9987
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 9988
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 9989
    const/high16 v0, 0x437f0000

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9990
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9992
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 9993
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 10002
    :cond_0
    :goto_0
    return-void

    .line 9995
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9996
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9997
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 9998
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/DisplayList;->setAlpha(F)V

    goto :goto_0
.end method

.method setAlphaNoInvalidation(F)Z
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 10015
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 10016
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 10017
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 10018
    const/high16 v1, 0x437f0000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    .line 10019
    .local v0, "subclassHandlesAlpha":Z
    if-eqz v0, :cond_0

    .line 10020
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10021
    const/4 v1, 0x1

    .line 10029
    .end local v0    # "subclassHandlesAlpha":Z
    :goto_0
    return v1

    .line 10023
    .restart local v0    # "subclassHandlesAlpha":Z
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10024
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_1

    .line 10025
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/DisplayList;->setAlpha(F)V

    .line 10029
    .end local v0    # "subclassHandlesAlpha":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 16952
    iput-object p1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 16954
    if-eqz p1, :cond_1

    .line 16958
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScreenOn:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 16960
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 16962
    :cond_0
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 16964
    :cond_1
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 15453
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15454
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 15410
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 15411
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 15412
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 15413
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View;->mBackgroundResource:I

    .line 15417
    :goto_0
    return-void

    .line 15415
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 15461
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 15463
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_0

    .line 15559
    :goto_0
    return-void

    .line 15467
    :cond_0
    const/4 v1, 0x0

    .line 15469
    .local v1, "requestLayout":Z
    iput v4, p0, Landroid/view/View;->mBackgroundResource:I

    .line 15475
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 15476
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 15477
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15480
    :cond_1
    if-eqz p1, :cond_a

    .line 15481
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 15482
    .local v0, "padding":Landroid/graphics/Rect;
    if-nez v0, :cond_2

    .line 15483
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "padding":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15484
    .restart local v0    # "padding":Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 15486
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 15487
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 15488
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15489
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 15490
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 15498
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 15499
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 15500
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 15502
    :goto_1
    iput-boolean v4, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 15503
    iput-boolean v4, p0, Landroid/view/View;->mRightPaddingDefined:Z

    .line 15508
    :cond_3
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    if-eq v2, v5, :cond_5

    .line 15510
    :cond_4
    const/4 v1, 0x1

    .line 15513
    :cond_5
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 15514
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15515
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 15517
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_2
    invoke-virtual {p1, v2, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 15518
    iput-object p1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 15520
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 15521
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15522
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15523
    const/4 v1, 0x1

    .line 15551
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 15553
    if-eqz v1, :cond_8

    .line 15554
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15557
    :cond_8
    iput-boolean v3, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 15558
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    goto/16 :goto_0

    .line 15492
    .restart local v0    # "padding":Landroid/graphics/Rect;
    :pswitch_0
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 15493
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 15494
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/view/View;->internalSetPadding(IIII)V

    goto :goto_1

    :cond_9
    move v2, v4

    .line 15517
    goto :goto_2

    .line 15527
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_a
    iput-object v5, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 15529
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_b

    .line 15535
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15536
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15548
    :cond_b
    const/4 v1, 0x1

    goto :goto_3

    .line 15490
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 15428
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/view/View;->mBackgroundResource:I

    if-ne p1, v1, :cond_0

    .line 15439
    :goto_0
    return-void

    .line 15432
    :cond_0
    const/4 v0, 0x0

    .line 15433
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 15434
    iget-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 15436
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15438
    iput p1, p0, Landroid/view/View;->mBackgroundResource:I

    goto :goto_0
.end method

.method public final setBottom(I)V
    .locals 9
    .param p1, "bottom"    # I

    .prologue
    const/high16 v8, 0x10000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 10171
    iget v6, p0, Landroid/view/View;->mBottom:I

    if-eq p1, v6, :cond_5

    .line 10172
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10173
    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v6}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_0
    move v0, v5

    .line 10175
    .local v0, "matrixIsIdentity":Z
    :goto_0
    if-eqz v0, :cond_8

    .line 10176
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_1

    .line 10178
    iget v6, p0, Landroid/view/View;->mBottom:I

    if-ge p1, v6, :cond_7

    .line 10179
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 10183
    .local v1, "maxBottom":I
    :goto_1
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v4, v4, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 10190
    .end local v1    # "maxBottom":I
    :cond_1
    :goto_2
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v6

    .line 10191
    .local v3, "width":I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v2, v4, v6

    .line 10193
    .local v2, "oldHeight":I
    iput p1, p0, Landroid/view/View;->mBottom:I

    .line 10194
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_2

    .line 10195
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v6, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v4, v6}, Landroid/view/DisplayList;->setBottom(I)V

    .line 10198
    :cond_2
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v6

    invoke-direct {p0, v3, v4, v3, v2}, Landroid/view/View;->sizeChange(IIII)V

    .line 10200
    if-nez v0, :cond_4

    .line 10201
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-nez v4, :cond_3

    .line 10203
    iget-object v4, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v5, v4, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 10205
    :cond_3
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10206
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 10208
    :cond_4
    iput-boolean v5, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 10209
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10210
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_5

    .line 10212
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10215
    .end local v0    # "matrixIsIdentity":Z
    .end local v2    # "oldHeight":I
    .end local v3    # "width":I
    :cond_5
    return-void

    :cond_6
    move v0, v4

    .line 10173
    goto :goto_0

    .line 10181
    .restart local v0    # "matrixIsIdentity":Z
    :cond_7
    move v1, p1

    .restart local v1    # "maxBottom":I
    goto :goto_1

    .line 10187
    .end local v1    # "maxBottom":I
    :cond_8
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setCameraDistance(F)V
    .locals 8
    .param p1, "distance"    # F

    .prologue
    const/high16 v7, 0x10000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 9560
    invoke-virtual {p0, v6, v4}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9562
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9563
    iget-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v2

    .line 9564
    .local v0, "dpi":F
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9565
    .local v1, "info":Landroid/view/View$TransformationInfo;
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    if-nez v2, :cond_0

    .line 9566
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1902(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 9567
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 9570
    :cond_0
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {v2, v5, v5, v3}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 9571
    iput-boolean v6, v1, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9573
    invoke-virtual {p0, v4, v4}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9574
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v2, :cond_1

    .line 9575
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/DisplayList;->setCameraDistance(F)V

    .line 9577
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_2

    .line 9579
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9581
    :cond_2
    return-void
.end method

.method public setClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    const/16 v1, 0x4000

    .line 6540
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6541
    return-void

    .line 6540
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClipBounds(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 14044
    if-eqz p1, :cond_3

    .line 14045
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14064
    :cond_0
    :goto_0
    return-void

    .line 14048
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 14049
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14050
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 14052
    :cond_2
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    .line 14056
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 14059
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 14060
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14061
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 5656
    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 5657
    if-nez p1, :cond_2

    .line 5672
    :cond_0
    :goto_0
    return-void

    .line 5660
    :cond_1
    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5663
    :cond_2
    iput-object p1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    .line 5664
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    move v0, v1

    .line 5665
    .local v0, "nonEmptyDesc":Z
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 5666
    invoke-virtual {p0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 5667
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    goto :goto_0

    .line 5664
    .end local v0    # "nonEmptyDesc":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 5669
    .restart local v0    # "nonEmptyDesc":Z
    :cond_4
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0
.end method

.method public setDisabledSystemUiVisibility(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 17231
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 17232
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    if-eq v0, p1, :cond_0

    .line 17233
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    .line 17234
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 17235
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 17239
    :cond_0
    return-void
.end method

.method setDisplayListProperties(Landroid/view/DisplayList;)V
    .locals 14
    .param p1, "displayList"    # Landroid/view/DisplayList;

    .prologue
    const/high16 v13, 0x20000000

    const/high16 v5, 0x3f800000

    .line 14143
    if-eqz p1, :cond_5

    .line 14144
    iget v0, p0, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 14145
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setHasOverlappingRendering(Z)V

    .line 14146
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 14147
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setClipToBounds(Z)V

    .line 14150
    :cond_0
    const/high16 v1, 0x3f800000

    .line 14151
    .local v1, "alpha":F
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2

    .line 14153
    iget-object v10, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v10, Landroid/view/ViewGroup;

    .line 14154
    .local v10, "parentVG":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v11

    .line 14155
    .local v11, "t":Landroid/view/animation/Transformation;
    invoke-virtual {v10, p0, v11}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14156
    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v12

    .line 14157
    .local v12, "transformType":I
    if-eqz v12, :cond_2

    .line 14158
    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_1

    .line 14159
    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    .line 14161
    :cond_1
    and-int/lit8 v0, v12, 0x2

    if-eqz v0, :cond_2

    .line 14162
    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setMatrix(Landroid/graphics/Matrix;)V

    .line 14167
    .end local v10    # "parentVG":Landroid/view/ViewGroup;
    .end local v11    # "t":Landroid/view/animation/Transformation;
    .end local v12    # "transformType":I
    :cond_2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_7

    .line 14168
    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v0

    mul-float/2addr v1, v0

    .line 14169
    cmpg-float v0, v1, v5

    if-gez v0, :cond_3

    .line 14170
    const/high16 v0, 0x437f0000

    mul-float/2addr v0, v1

    float-to-int v9, v0

    .line 14171
    .local v9, "multipliedAlpha":I
    invoke-virtual {p0, v9}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14172
    const/high16 v1, 0x3f800000

    .line 14175
    .end local v9    # "multipliedAlpha":I
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v2, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v4, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v5, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v6, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v7, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v8, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/view/DisplayList;->setTransformationInfo(FFFFFFFF)V

    .line 14180
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v0

    if-nez v0, :cond_4

    .line 14181
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0, v2}, Landroid/view/View$TransformationInfo;->access$1902(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 14182
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0, v2}, Landroid/view/View$TransformationInfo;->access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 14184
    :cond_4
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Camera;->getLocationZ()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setCameraDistance(F)V

    .line 14185
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v13

    if-ne v0, v13, :cond_5

    .line 14186
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setPivotX(F)V

    .line 14187
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setPivotY(F)V

    .line 14193
    .end local v1    # "alpha":F
    :cond_5
    :goto_1
    return-void

    .line 14147
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 14189
    .restart local v1    # "alpha":F
    :cond_7
    cmpg-float v0, v1, v5

    if-gez v0, :cond_5

    .line 14190
    invoke-virtual {p1, v1}, Landroid/view/DisplayList;->setAlpha(F)V

    goto :goto_1
.end method

.method public setDrawingCacheBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 13632
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    if-eq p1, v0, :cond_0

    .line 13633
    iput p1, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 13634
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13636
    :cond_0
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const v1, 0x8000

    const/4 v0, 0x0

    .line 13329
    iput-boolean v0, p0, Landroid/view/View;->mCachingFailed:Z

    .line 13330
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 13331
    return-void
.end method

.method public setDrawingCacheQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 5819
    const/high16 v0, 0x180000

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 5820
    return-void
.end method

.method public setDuplicateParentStateEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x400000

    .line 12993
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 12994
    return-void

    .line 12993
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 6190
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_1

    .line 6207
    :cond_0
    :goto_0
    return-void

    .line 6192
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6198
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 6204
    if-nez p1, :cond_0

    .line 6205
    invoke-virtual {p0}, Landroid/view/View;->cancelPendingInputEvents()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 6192
    goto :goto_1
.end method

.method public setFadingEdgeLength(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 4226
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 4227
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 4228
    return-void
.end method

.method public setFilterTouchesWhenObscured(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0x400

    .line 6677
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6679
    return-void

    .line 6677
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFitsSystemWindows(Z)V
    .locals 2
    .param p1, "fitSystemWindows"    # Z

    .prologue
    const/4 v1, 0x2

    .line 6102
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6103
    return-void

    .line 6102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setFlags(II)V
    .locals 11
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    const v10, -0x8001

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 8983
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 8985
    .local v0, "accessibilityEnabled":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v7

    .line 8987
    .local v4, "oldIncludeForAccessibility":Z
    :goto_0
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    .line 8988
    .local v3, "old":I
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit8 v9, p2, -0x1

    and-int/2addr v6, v9

    and-int v9, p1, p2

    or-int/2addr v6, v9

    iput v6, p0, Landroid/view/View;->mViewFlags:I

    .line 8990
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    xor-int v1, v6, v3

    .line 8991
    .local v1, "changed":I
    if-nez v1, :cond_2

    .line 9145
    :cond_0
    :goto_1
    return-void

    .end local v1    # "changed":I
    .end local v3    # "old":I
    .end local v4    # "oldIncludeForAccessibility":Z
    :cond_1
    move v4, v8

    .line 8985
    goto :goto_0

    .line 8994
    .restart local v1    # "changed":I
    .restart local v3    # "old":I
    .restart local v4    # "oldIncludeForAccessibility":Z
    :cond_2
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8997
    .local v5, "privateFlags":I
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_3

    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_3

    .line 8999
    and-int/lit8 v6, v3, 0x1

    if-ne v6, v7, :cond_15

    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_15

    .line 9002
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 9013
    :cond_3
    :goto_2
    and-int/lit8 v2, p1, 0xc

    .line 9014
    .local v2, "newVisibility":I
    if-nez v2, :cond_4

    .line 9015
    and-int/lit8 v6, v1, 0xc

    if-eqz v6, :cond_4

    .line 9021
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9022
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 9024
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 9030
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_4

    iget v6, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    if-le v6, v9, :cond_4

    iget v6, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    if-le v6, v9, :cond_4

    .line 9031
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 9037
    :cond_4
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_8

    .line 9038
    invoke-virtual {p0, v8}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 9039
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9041
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/16 v9, 0x8

    if-ne v6, v9, :cond_7

    .line 9042
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 9043
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 9044
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 9045
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_6

    .line 9047
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->invalidate(Z)V

    .line 9051
    :cond_6
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9053
    :cond_7
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_8

    .line 9054
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 9059
    :cond_8
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_b

    .line 9060
    invoke-virtual {p0, v8}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 9065
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9067
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/4 v9, 0x4

    if-ne v6, v9, :cond_a

    .line 9069
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    if-eq v6, p0, :cond_a

    .line 9070
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 9071
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 9074
    :cond_a
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_b

    .line 9075
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 9079
    :cond_b
    and-int/lit8 v6, v1, 0xc

    if-eqz v6, :cond_e

    .line 9081
    if-eqz v2, :cond_c

    .line 9082
    invoke-direct {p0}, Landroid/view/View;->cleanupDraw()V

    .line 9085
    :cond_c
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_16

    .line 9086
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    and-int/lit8 v9, v1, 0xc

    invoke-virtual {v6, p0, v9, v2}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 9088
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->invalidate(Z)V

    .line 9092
    :cond_d
    :goto_3
    invoke-virtual {p0, p0, v2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 9095
    :cond_e
    const/high16 v6, 0x20000

    and-int/2addr v6, v1

    if-eqz v6, :cond_f

    .line 9096
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 9099
    :cond_f
    const v6, 0x8000

    and-int/2addr v6, v1

    if-eqz v6, :cond_10

    .line 9100
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 9101
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v6, v10

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9102
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 9105
    :cond_10
    const/high16 v6, 0x180000

    and-int/2addr v6, v1

    if-eqz v6, :cond_11

    .line 9106
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 9107
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v6, v10

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9110
    :cond_11
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_12

    .line 9111
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_18

    .line 9112
    iget-object v6, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_17

    .line 9113
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x81

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9114
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9121
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9122
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 9125
    :cond_12
    const/high16 v6, 0x4000000

    and-int/2addr v6, v1

    if-eqz v6, :cond_13

    .line 9126
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_13

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_13

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v6, :cond_13

    .line 9127
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 9131
    :cond_13
    if-eqz v0, :cond_0

    .line 9132
    and-int/lit8 v6, v1, 0x1

    if-nez v6, :cond_14

    and-int/lit8 v6, v1, 0xc

    if-nez v6, :cond_14

    and-int/lit16 v6, v1, 0x4000

    if-nez v6, :cond_14

    const/high16 v6, 0x200000

    and-int/2addr v6, v1

    if-eqz v6, :cond_1a

    .line 9134
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v6

    if-eq v4, v6, :cond_19

    .line 9135
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    goto/16 :goto_1

    .line 9003
    .end local v2    # "newVisibility":I
    :cond_15
    and-int/lit8 v6, v3, 0x1

    if-nez v6, :cond_3

    and-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_3

    .line 9009
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    goto/16 :goto_2

    .line 9089
    .restart local v2    # "newVisibility":I
    :cond_16
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_d

    .line 9090
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v9, 0x0

    invoke-interface {v6, p0, v9}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 9116
    :cond_17
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_4

    .line 9119
    :cond_18
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x81

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_4

    .line 9137
    :cond_19
    invoke-virtual {p0, v8}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto/16 :goto_1

    .line 9140
    :cond_1a
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_0

    .line 9141
    invoke-virtual {p0, v8}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto/16 :goto_1
.end method

.method public setFocusable(Z)V
    .locals 3
    .param p1, "focusable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6221
    if-nez p1, :cond_0

    .line 6222
    const/high16 v2, 0x40000

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 6224
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6225
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3
    .param p1, "focusableInTouchMode"    # Z

    .prologue
    const/high16 v1, 0x40000

    const/4 v2, 0x1

    .line 6243
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6244
    if-eqz p1, :cond_0

    .line 6245
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->setFlags(II)V

    .line 6247
    :cond_0
    return-void

    .line 6243
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 13
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 14996
    const/4 v1, 0x0

    .line 15003
    .local v1, "changed":Z
    iget v8, p0, Landroid/view/View;->mLeft:I

    if-ne v8, p1, :cond_0

    iget v8, p0, Landroid/view/View;->mRight:I

    move/from16 v0, p3

    if-ne v8, v0, :cond_0

    iget v8, p0, Landroid/view/View;->mTop:I

    if-ne v8, p2, :cond_0

    iget v8, p0, Landroid/view/View;->mBottom:I

    move/from16 v0, p4

    if-eq v8, v0, :cond_6

    .line 15004
    :cond_0
    const/4 v1, 0x1

    .line 15007
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v2, v8, 0x20

    .line 15009
    .local v2, "drawn":I
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v8, v9

    .line 15010
    .local v6, "oldWidth":I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int v5, v8, v9

    .line 15011
    .local v5, "oldHeight":I
    sub-int v4, p3, p1

    .line 15012
    .local v4, "newWidth":I
    sub-int v3, p4, p2

    .line 15013
    .local v3, "newHeight":I
    if-ne v4, v6, :cond_1

    if-eq v3, v5, :cond_7

    :cond_1
    const/4 v7, 0x1

    .line 15016
    .local v7, "sizeChanged":Z
    :goto_0
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 15018
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 15019
    iput p2, p0, Landroid/view/View;->mTop:I

    .line 15020
    move/from16 v0, p3

    iput v0, p0, Landroid/view/View;->mRight:I

    .line 15021
    move/from16 v0, p4

    iput v0, p0, Landroid/view/View;->mBottom:I

    .line 15022
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v8, :cond_2

    .line 15023
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v9, p0, Landroid/view/View;->mLeft:I

    iget v10, p0, Landroid/view/View;->mTop:I

    iget v11, p0, Landroid/view/View;->mRight:I

    iget v12, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 15026
    :cond_2
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15029
    if-eqz v7, :cond_4

    .line 15030
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x20000000

    and-int/2addr v8, v9

    if-nez v8, :cond_3

    .line 15032
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v8, :cond_3

    .line 15033
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 15036
    :cond_3
    invoke-direct {p0, v4, v3, v6, v5}, Landroid/view/View;->sizeChange(IIII)V

    .line 15039
    :cond_4
    iget v8, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-nez v8, :cond_5

    .line 15045
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15046
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 15049
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 15053
    :cond_5
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v8, v2

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15055
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 15057
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 15059
    .end local v2    # "drawn":I
    .end local v3    # "newHeight":I
    .end local v4    # "newWidth":I
    .end local v5    # "oldHeight":I
    .end local v6    # "oldWidth":I
    .end local v7    # "sizeChanged":Z
    :cond_6
    return v1

    .line 15013
    .restart local v2    # "drawn":I
    .restart local v3    # "newHeight":I
    .restart local v4    # "newWidth":I
    .restart local v5    # "oldHeight":I
    .restart local v6    # "oldWidth":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public setHapticFeedbackEnabled(Z)V
    .locals 2
    .param p1, "hapticFeedbackEnabled"    # Z

    .prologue
    const/high16 v1, 0x10000000

    .line 6291
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6292
    return-void

    .line 6291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHasTransientState(Z)V
    .locals 4
    .param p1, "hasTransientState"    # Z

    .prologue
    const/4 v2, 0x0

    .line 6431
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    iput v1, p0, Landroid/view/View;->mTransientStateCount:I

    .line 6433
    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    if-gez v1, :cond_2

    .line 6434
    iput v2, p0, Landroid/view/View;->mTransientStateCount:I

    .line 6435
    const-string v1, "View"

    const-string v2, "hasTransientState decremented below 0: unmatched pair of setHasTransientState calls"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6451
    :cond_0
    :goto_1
    return-void

    .line 6431
    :cond_1
    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6437
    :cond_2
    if-eqz p1, :cond_3

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    :cond_3
    if-nez p1, :cond_0

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    if-nez v1, :cond_0

    .line 6440
    :cond_4
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    const v3, 0x7fffffff

    and-int/2addr v3, v1

    if-eqz p1, :cond_5

    const/high16 v1, -0x80000000

    :goto_2
    or-int/2addr v1, v3

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6442
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 6444
    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6445
    :catch_0
    move-exception v0

    .line 6446
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_5
    move v1, v2

    .line 6440
    goto :goto_2
.end method

.method public setHorizontalFadingEdgeEnabled(Z)V
    .locals 1
    .param p1, "horizontalFadingEdgeEnabled"    # Z

    .prologue
    .line 11548
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 11549
    if-eqz p1, :cond_0

    .line 11550
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 11553
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11555
    :cond_1
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "horizontalScrollBarEnabled"    # Z

    .prologue
    .line 11675
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 11676
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11677
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 11678
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11680
    :cond_0
    return-void
.end method

.method public setHovered(Z)V
    .locals 2
    .param p1, "hovered"    # Z

    .prologue
    const/high16 v1, 0x10000000

    .line 8708
    if-eqz p1, :cond_1

    .line 8709
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 8710
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8711
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8712
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->onHoverChanged(Z)V

    .line 8721
    :cond_0
    :goto_0
    return-void

    .line 8715
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 8716
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8717
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8718
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onHoverChanged(Z)V

    goto :goto_0
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 16271
    iput p1, p0, Landroid/view/View;->mID:I

    .line 16272
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mLabelForId:I

    if-eq v0, v1, :cond_0

    .line 16273
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mID:I

    .line 16275
    :cond_0
    return-void
.end method

.method public setImportantForAccessibility(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 7264
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    .line 7265
    .local v2, "oldMode":I
    if-eq p1, v2, :cond_2

    .line 7269
    if-eqz v2, :cond_0

    if-nez p1, :cond_3

    :cond_0
    move v0, v1

    .line 7271
    .local v0, "maySkipNotify":Z
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7272
    .local v1, "oldIncludeForAccessibility":Z
    :goto_1
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    const v5, -0x700001

    and-int/2addr v4, v5

    iput v4, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 7273
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v5, p1, 0x14

    const/high16 v6, 0x700000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 7275
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eq v1, v4, :cond_5

    .line 7276
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 7282
    .end local v0    # "maySkipNotify":Z
    .end local v1    # "oldIncludeForAccessibility":Z
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v3

    .line 7269
    goto :goto_0

    .restart local v0    # "maySkipNotify":Z
    :cond_4
    move v1, v3

    .line 7271
    goto :goto_1

    .line 7278
    .restart local v1    # "oldIncludeForAccessibility":Z
    :cond_5
    invoke-virtual {p0, v3}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_2
.end method

.method public setIsRootNamespace(Z)V
    .locals 1
    .param p1, "isRoot"    # Z

    .prologue
    .line 16284
    if-eqz p1, :cond_0

    .line 16285
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16289
    :goto_0
    return-void

    .line 16287
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepScreenOn"    # Z

    .prologue
    const/high16 v1, 0x4000000

    .line 5847
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5848
    return-void

    .line 5847
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLabelFor(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 5693
    iput p1, p0, Landroid/view/View;->mLabelForId:I

    .line 5694
    iget v0, p0, Landroid/view/View;->mLabelForId:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mID:I

    if-ne v0, v1, :cond_0

    .line 5696
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mID:I

    .line 5698
    :cond_0
    return-void
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 13108
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    .line 13109
    .local v1, "layerType":I
    if-eqz v1, :cond_1

    .line 13110
    if-nez p1, :cond_2

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    :goto_0
    iput-object v2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 13111
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 13112
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v0

    .line 13113
    .local v0, "layer":Landroid/view/HardwareLayer;
    if-eqz v0, :cond_0

    .line 13114
    invoke-virtual {v0, p1}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 13116
    :cond_0
    invoke-virtual {p0, v3, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 13121
    .end local v0    # "layer":Landroid/view/HardwareLayer;
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v2, p1

    .line 13110
    goto :goto_0

    .line 13118
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 13047
    if-ltz p1, :cond_0

    const/4 v3, 0x2

    if-le p1, v3, :cond_1

    .line 13048
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Layer type can only be one of: LAYER_TYPE_NONE, LAYER_TYPE_SOFTWARE or LAYER_TYPE_HARDWARE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13052
    :cond_1
    iget v3, p0, Landroid/view/View;->mLayerType:I

    if-ne p1, v3, :cond_4

    .line 13053
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    if-eq p2, v1, :cond_3

    .line 13054
    if-nez p2, :cond_2

    new-instance p2, Landroid/graphics/Paint;

    .end local p2    # "paint":Landroid/graphics/Paint;
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    :cond_2
    iput-object p2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 13055
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 13056
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 13080
    :cond_3
    :goto_0
    return-void

    .line 13062
    .restart local p2    # "paint":Landroid/graphics/Paint;
    :cond_4
    iget v3, p0, Landroid/view/View;->mLayerType:I

    packed-switch v3, :pswitch_data_0

    .line 13073
    :goto_1
    iput p1, p0, Landroid/view/View;->mLayerType:I

    .line 13074
    iget v3, p0, Landroid/view/View;->mLayerType:I

    if-nez v3, :cond_5

    move v0, v2

    .line 13075
    .local v0, "layerDisabled":Z
    :cond_5
    if-eqz v0, :cond_7

    move-object p2, v1

    .end local p2    # "paint":Landroid/graphics/Paint;
    :cond_6
    :goto_2
    iput-object p2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 13076
    if-eqz v0, :cond_8

    :goto_3
    iput-object v1, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    .line 13078
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 13079
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    goto :goto_0

    .line 13064
    .end local v0    # "layerDisabled":Z
    .restart local p2    # "paint":Landroid/graphics/Paint;
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/view/View;->destroyLayer(Z)Z

    .line 13067
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_1

    .line 13075
    .restart local v0    # "layerDisabled":Z
    :cond_7
    if-nez p2, :cond_6

    new-instance p2, Landroid/graphics/Paint;

    .end local p2    # "paint":Landroid/graphics/Paint;
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    goto :goto_2

    .line 13076
    :cond_8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_3

    .line 13062
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 6348
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 6350
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, -0xd

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6351
    invoke-virtual {p0}, Landroid/view/View;->resetRtlProperties()V

    .line 6353
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6356
    invoke-virtual {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 6357
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6358
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 6360
    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 10701
    if-nez p1, :cond_0

    .line 10702
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Layout parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10704
    :cond_0
    iput-object p1, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 10705
    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 10706
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 10707
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10709
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10710
    return-void
.end method

.method public final setLeft(I)V
    .locals 11
    .param p1, "left"    # I

    .prologue
    const/high16 v10, 0x10000000

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 10235
    iget v7, p0, Landroid/view/View;->mLeft:I

    if-eq p1, v7, :cond_5

    .line 10236
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10237
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_0
    move v1, v6

    .line 10239
    .local v1, "matrixIsIdentity":Z
    :goto_0
    if-eqz v1, :cond_8

    .line 10240
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_1

    .line 10243
    iget v7, p0, Landroid/view/View;->mLeft:I

    if-ge p1, v7, :cond_7

    .line 10244
    move v2, p1

    .line 10245
    .local v2, "minLeft":I
    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v4, p1, v7

    .line 10250
    .local v4, "xLoc":I
    :goto_1
    iget v7, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v7, v2

    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v4, v5, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 10257
    .end local v2    # "minLeft":I
    .end local v4    # "xLoc":I
    :cond_1
    :goto_2
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v7

    .line 10258
    .local v3, "oldWidth":I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v0, v5, v7

    .line 10260
    .local v0, "height":I
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 10261
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v5, :cond_2

    .line 10262
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v5, p1}, Landroid/view/DisplayList;->setLeft(I)V

    .line 10265
    :cond_2
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v7

    invoke-direct {p0, v5, v0, v3, v0}, Landroid/view/View;->sizeChange(IIII)V

    .line 10267
    if-nez v1, :cond_4

    .line 10268
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x20000000

    and-int/2addr v5, v7

    if-nez v5, :cond_3

    .line 10270
    iget-object v5, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v6, v5, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 10272
    :cond_3
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10273
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 10275
    :cond_4
    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 10276
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10277
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v5, v10

    if-ne v5, v10, :cond_5

    .line 10279
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10282
    .end local v0    # "height":I
    .end local v1    # "matrixIsIdentity":Z
    .end local v3    # "oldWidth":I
    :cond_5
    return-void

    :cond_6
    move v1, v5

    .line 10237
    goto :goto_0

    .line 10247
    .restart local v1    # "matrixIsIdentity":Z
    :cond_7
    iget v2, p0, Landroid/view/View;->mLeft:I

    .line 10248
    .restart local v2    # "minLeft":I
    const/4 v4, 0x0

    .restart local v4    # "xLoc":I
    goto :goto_1

    .line 10254
    .end local v2    # "minLeft":I
    .end local v4    # "xLoc":I
    :cond_8
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setLongClickable(Z)V
    .locals 2
    .param p1, "longClickable"    # Z

    .prologue
    const/high16 v1, 0x200000

    .line 6566
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6567
    return-void

    .line 6566
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setMeasuredDimension(II)V
    .locals 6
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    .line 16719
    invoke-static {p0}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    .line 16720
    .local v1, "optical":Z
    iget-object v4, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v4}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v4

    if-eq v1, v4, :cond_0

    .line 16721
    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 16722
    .local v0, "insets":Landroid/graphics/Insets;
    iget v4, v0, Landroid/graphics/Insets;->left:I

    iget v5, v0, Landroid/graphics/Insets;->right:I

    add-int v3, v4, v5

    .line 16723
    .local v3, "opticalWidth":I
    iget v4, v0, Landroid/graphics/Insets;->top:I

    iget v5, v0, Landroid/graphics/Insets;->bottom:I

    add-int v2, v4, v5

    .line 16725
    .local v2, "opticalHeight":I
    if-eqz v1, :cond_1

    .end local v3    # "opticalWidth":I
    :goto_0
    add-int/2addr p1, v3

    .line 16726
    if-eqz v1, :cond_2

    .end local v2    # "opticalHeight":I
    :goto_1
    add-int/2addr p2, v2

    .line 16728
    .end local v0    # "insets":Landroid/graphics/Insets;
    :cond_0
    iput p1, p0, Landroid/view/View;->mMeasuredWidth:I

    .line 16729
    iput p2, p0, Landroid/view/View;->mMeasuredHeight:I

    .line 16731
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16732
    return-void

    .line 16725
    .restart local v0    # "insets":Landroid/graphics/Insets;
    .restart local v2    # "opticalHeight":I
    .restart local v3    # "opticalWidth":I
    :cond_1
    neg-int v3, v3

    goto :goto_0

    .line 16726
    .end local v3    # "opticalWidth":I
    :cond_2
    neg-int v2, v2

    goto :goto_1
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .prologue
    .line 16871
    iput p1, p0, Landroid/view/View;->mMinHeight:I

    .line 16872
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 16873
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .param p1, "minWidth"    # I

    .prologue
    .line 16900
    iput p1, p0, Landroid/view/View;->mMinWidth:I

    .line 16901
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 16903
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0
    .param p1, "nextFocusDownId"    # I

    .prologue
    .line 5931
    iput p1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 5932
    return-void
.end method

.method public setNextFocusForwardId(I)V
    .locals 0
    .param p1, "nextFocusForwardId"    # I

    .prologue
    .line 5952
    iput p1, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 5953
    return-void
.end method

.method public setNextFocusLeftId(I)V
    .locals 0
    .param p1, "nextFocusLeftId"    # I

    .prologue
    .line 5868
    iput p1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 5869
    return-void
.end method

.method public setNextFocusRightId(I)V
    .locals 0
    .param p1, "nextFocusRightId"    # I

    .prologue
    .line 5889
    iput p1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 5890
    return-void
.end method

.method public setNextFocusUpId(I)V
    .locals 0
    .param p1, "nextFocusUpId"    # I

    .prologue
    .line 5910
    iput p1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 5911
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 4511
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4512
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 4514
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 4515
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 4549
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4550
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 4552
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 4553
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnDragListener;

    .prologue
    .line 4712
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$602(Landroid/view/View$ListenerInfo;Landroid/view/View$OnDragListener;)Landroid/view/View$OnDragListener;

    .line 4713
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 4426
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 4427
    return-void
.end method

.method public setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnGenericMotionListener;

    .prologue
    .line 4693
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$402(Landroid/view/View$ListenerInfo;Landroid/view/View$OnGenericMotionListener;)Landroid/view/View$OnGenericMotionListener;

    .line 4694
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnHoverListener;

    .prologue
    .line 4701
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$502(Landroid/view/View$ListenerInfo;Landroid/view/View$OnHoverListener;)Landroid/view/View$OnHoverListener;

    .line 4702
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 4677
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$202(Landroid/view/View$ListenerInfo;Landroid/view/View$OnKeyListener;)Landroid/view/View$OnKeyListener;

    .line 4678
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 4535
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4536
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 4538
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 4539
    return-void
.end method

.method public setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .prologue
    .line 17202
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$1102(Landroid/view/View$ListenerInfo;Landroid/view/View$OnSystemUiVisibilityChangeListener;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 17203
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    .line 17204
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 17206
    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 4685
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$302(Landroid/view/View$ListenerInfo;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;

    .line 4686
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "overScrollMode"    # I

    .prologue
    .line 17714
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 17717
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid overscroll mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17719
    :cond_0
    iput p1, p0, Landroid/view/View;->mOverScrollMode:I

    .line 17720
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v1, 0x1

    const/high16 v0, -0x80000000

    .line 15592
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 15594
    iput v0, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 15595
    iput v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 15597
    iput p1, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 15598
    iput p3, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 15600
    iput-boolean v1, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 15601
    iput-boolean v1, p0, Landroid/view/View;->mRightPaddingDefined:Z

    .line 15603
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 15604
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v0, 0x1

    .line 15684
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 15686
    iput p1, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 15687
    iput p3, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 15688
    iput-boolean v0, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 15689
    iput-boolean v0, p0, Landroid/view/View;->mRightPaddingDefined:Z

    .line 15691
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 15699
    iput p1, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 15700
    iput p3, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 15701
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 15703
    :goto_0
    return-void

    .line 15693
    :pswitch_0
    iput p3, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 15694
    iput p1, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 15695
    invoke-virtual {p0, p3, p2, p1, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    goto :goto_0

    .line 15691
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setPivotX(F)V
    .locals 7
    .param p1, "pivotX"    # F

    .prologue
    const/high16 v6, 0x10000000

    const/high16 v5, 0x20000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9851
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9852
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9853
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 9855
    .local v1, "pivotSet":Z
    :goto_0
    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_0

    if-nez v1, :cond_2

    .line 9856
    :cond_0
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9857
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9858
    iput p1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 9859
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9860
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9861
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v2, :cond_1

    .line 9862
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v2, p1}, Landroid/view/DisplayList;->setPivotX(F)V

    .line 9864
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_2

    .line 9866
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9869
    :cond_2
    return-void

    .end local v1    # "pivotSet":Z
    :cond_3
    move v1, v3

    .line 9853
    goto :goto_0
.end method

.method public setPivotY(F)V
    .locals 7
    .param p1, "pivotY"    # F

    .prologue
    const/high16 v6, 0x10000000

    const/high16 v5, 0x20000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9903
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9904
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9905
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 9907
    .local v1, "pivotSet":Z
    :goto_0
    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_0

    if-nez v1, :cond_2

    .line 9908
    :cond_0
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9909
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9910
    iput p1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 9911
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9912
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9913
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v2, :cond_1

    .line 9914
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v2, p1}, Landroid/view/DisplayList;->setPivotY(F)V

    .line 9916
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_2

    .line 9918
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9921
    :cond_2
    return-void

    .end local v1    # "pivotSet":Z
    :cond_3
    move v1, v3

    .line 9905
    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 4
    .param p1, "pressed"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6579
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_1

    move v2, v0

    :goto_0
    if-eq p1, v2, :cond_2

    .line 6581
    .local v0, "needsRefresh":Z
    :goto_1
    if-eqz p1, :cond_3

    .line 6582
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6587
    :goto_2
    if-eqz v0, :cond_0

    .line 6588
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6590
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetPressed(Z)V

    .line 6591
    return-void

    .end local v0    # "needsRefresh":Z
    :cond_1
    move v2, v1

    .line 6579
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 6584
    .restart local v0    # "needsRefresh":Z
    :cond_3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_2
.end method

.method public final setRight(I)V
    .locals 10
    .param p1, "right"    # I

    .prologue
    const/high16 v9, 0x10000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 10302
    iget v6, p0, Landroid/view/View;->mRight:I

    if-eq p1, v6, :cond_5

    .line 10303
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10304
    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v6}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_0
    move v1, v5

    .line 10306
    .local v1, "matrixIsIdentity":Z
    :goto_0
    if-eqz v1, :cond_8

    .line 10307
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_1

    .line 10309
    iget v6, p0, Landroid/view/View;->mRight:I

    if-ge p1, v6, :cond_7

    .line 10310
    iget v2, p0, Landroid/view/View;->mRight:I

    .line 10314
    .local v2, "maxRight":I
    :goto_1
    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v2, v6

    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v4, v4, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 10321
    .end local v2    # "maxRight":I
    :cond_1
    :goto_2
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v6

    .line 10322
    .local v3, "oldWidth":I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v0, v4, v6

    .line 10324
    .local v0, "height":I
    iput p1, p0, Landroid/view/View;->mRight:I

    .line 10325
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_2

    .line 10326
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v6, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v4, v6}, Landroid/view/DisplayList;->setRight(I)V

    .line 10329
    :cond_2
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v6

    invoke-direct {p0, v4, v0, v3, v0}, Landroid/view/View;->sizeChange(IIII)V

    .line 10331
    if-nez v1, :cond_4

    .line 10332
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-nez v4, :cond_3

    .line 10334
    iget-object v4, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v5, v4, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 10336
    :cond_3
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10337
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 10339
    :cond_4
    iput-boolean v5, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 10340
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10341
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v4, v9

    if-ne v4, v9, :cond_5

    .line 10343
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10346
    .end local v0    # "height":I
    .end local v1    # "matrixIsIdentity":Z
    .end local v3    # "oldWidth":I
    :cond_5
    return-void

    :cond_6
    move v1, v4

    .line 10304
    goto :goto_0

    .line 10312
    .restart local v1    # "matrixIsIdentity":Z
    :cond_7
    move v2, p1

    .restart local v2    # "maxRight":I
    goto :goto_1

    .line 10318
    .end local v2    # "maxRight":I
    :cond_8
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setRotation(F)V
    .locals 5
    .param p1, "rotation"    # F

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9612
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9613
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9614
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9616
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9617
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    .line 9618
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9619
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9620
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9621
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setRotation(F)V

    .line 9623
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9625
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9628
    :cond_1
    return-void
.end method

.method public setRotationX(F)V
    .locals 5
    .param p1, "rotationX"    # F

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9715
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9716
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9717
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9718
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9719
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    .line 9720
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9721
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9722
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9723
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setRotationX(F)V

    .line 9725
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9727
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9730
    :cond_1
    return-void
.end method

.method public setRotationY(F)V
    .locals 5
    .param p1, "rotationY"    # F

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9664
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9665
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9666
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9667
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9668
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    .line 9669
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9670
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9671
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9672
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setRotationY(F)V

    .line 9674
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9676
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9679
    :cond_1
    return-void
.end method

.method public setSaveEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x10000

    .line 6648
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6649
    return-void

    :cond_0
    move v0, v1

    .line 6648
    goto :goto_0
.end method

.method public setSaveFromParentEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x20000000

    .line 6709
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6710
    return-void

    :cond_0
    move v0, v1

    .line 6709
    goto :goto_0
.end method

.method public setScaleX(F)V
    .locals 5
    .param p1, "scaleX"    # F

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9758
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9759
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9760
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9761
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9762
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    .line 9763
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9764
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9765
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9766
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setScaleX(F)V

    .line 9768
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9770
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9773
    :cond_1
    return-void
.end method

.method public setScaleY(F)V
    .locals 5
    .param p1, "scaleY"    # F

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9801
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9802
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9803
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9804
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9805
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    .line 9806
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9807
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9808
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9809
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setScaleY(F)V

    .line 9811
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9813
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9816
    :cond_1
    return-void
.end method

.method public setScrollBarDefaultDelayBeforeFade(I)V
    .locals 1
    .param p1, "scrollBarDefaultDelayBeforeFade"    # I

    .prologue
    .line 11770
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 11771
    return-void
.end method

.method public setScrollBarFadeDuration(I)V
    .locals 1
    .param p1, "scrollBarFadeDuration"    # I

    .prologue
    .line 11794
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 11795
    return-void
.end method

.method public setScrollBarSize(I)V
    .locals 1
    .param p1, "scrollBarSize"    # I

    .prologue
    .line 11818
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 11819
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 3
    .param p1, "style"    # I

    .prologue
    const/high16 v2, 0x3000000

    .line 11841
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-eq p1, v0, :cond_0

    .line 11842
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const v1, -0x3000001

    and-int/2addr v0, v1

    and-int v1, p1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11843
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 11844
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11846
    :cond_0
    return-void
.end method

.method public setScrollContainer(Z)V
    .locals 2
    .param p1, "isScrollContainer"    # Z

    .prologue
    const/high16 v1, 0x100000

    .line 5775
    if-eqz p1, :cond_1

    .line 5776
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 5777
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5778
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5780
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5787
    :goto_0
    return-void

    .line 5782
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 5783
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5785
    :cond_2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x180001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setScrollX(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9250
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 9251
    return-void
.end method

.method public setScrollY(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9260
    iget v0, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    .line 9261
    return-void
.end method

.method public setScrollbarFadingEnabled(Z)V
    .locals 2
    .param p1, "fadeScrollbars"    # Z

    .prologue
    .line 11727
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 11728
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 11729
    .local v0, "scrollabilityCache":Landroid/view/View$ScrollabilityCache;
    iput-boolean p1, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 11730
    if-eqz p1, :cond_0

    .line 11731
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 11735
    :goto_0
    return-void

    .line 11733
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15837
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    if-eq v0, p1, :cond_1

    .line 15838
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v0, -0x5

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    :goto_1
    or-int/2addr v0, v3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15839
    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 15840
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 15841
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 15842
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetSelected(Z)V

    .line 15843
    invoke-virtual {p0, v1}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 15846
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 15837
    goto :goto_0

    :cond_3
    move v0, v1

    .line 15838
    goto :goto_1
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 2
    .param p1, "soundEffectsEnabled"    # Z

    .prologue
    const/high16 v1, 0x8000000

    .line 6262
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6263
    return-void

    .line 6262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSystemUiVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 17148
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq p1, v0, :cond_0

    .line 17149
    iput p1, p0, Landroid/view/View;->mSystemUiVisibility:I

    .line 17150
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    .line 17151
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 17154
    :cond_0
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 16382
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 16383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be an application-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16387
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    .line 16388
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 16340
    iput-object p1, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    .line 16341
    return-void
.end method

.method public setTagInternal(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 16397
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 16398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be a framework-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16402
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    .line 16403
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 3
    .param p1, "textAlignment"    # I

    .prologue
    .line 18028
    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 18030
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0xe001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 18031
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 18033
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0xd

    const v2, 0xe000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 18036
    invoke-virtual {p0}, Landroid/view/View;->resolveTextAlignment()Z

    .line 18038
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 18040
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 18041
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 18043
    :cond_0
    return-void
.end method

.method public setTextDirection(I)V
    .locals 2
    .param p1, "textDirection"    # I

    .prologue
    .line 17801
    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 17803
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, -0x1c1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17804
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 17806
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x6

    and-int/lit16 v1, v1, 0x1c0

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17808
    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()Z

    .line 17810
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 17812
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17813
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 17815
    :cond_0
    return-void
.end method

.method public final setTop(I)V
    .locals 10
    .param p1, "top"    # I

    .prologue
    const/high16 v9, 0x10000000

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 10095
    iget v7, p0, Landroid/view/View;->mTop:I

    if-eq p1, v7, :cond_5

    .line 10096
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10097
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_0
    move v0, v6

    .line 10099
    .local v0, "matrixIsIdentity":Z
    :goto_0
    if-eqz v0, :cond_8

    .line 10100
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_1

    .line 10103
    iget v7, p0, Landroid/view/View;->mTop:I

    if-ge p1, v7, :cond_7

    .line 10104
    move v1, p1

    .line 10105
    .local v1, "minTop":I
    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v4, p1, v7

    .line 10110
    .local v4, "yLoc":I
    :goto_1
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v8, v1

    invoke-virtual {p0, v5, v4, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 10117
    .end local v1    # "minTop":I
    .end local v4    # "yLoc":I
    :cond_1
    :goto_2
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v7

    .line 10118
    .local v3, "width":I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v2, v5, v7

    .line 10120
    .local v2, "oldHeight":I
    iput p1, p0, Landroid/view/View;->mTop:I

    .line 10121
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v5, :cond_2

    .line 10122
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v7, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v5, v7}, Landroid/view/DisplayList;->setTop(I)V

    .line 10125
    :cond_2
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v7

    invoke-direct {p0, v3, v5, v3, v2}, Landroid/view/View;->sizeChange(IIII)V

    .line 10127
    if-nez v0, :cond_4

    .line 10128
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x20000000

    and-int/2addr v5, v7

    if-nez v5, :cond_3

    .line 10130
    iget-object v5, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v6, v5, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 10132
    :cond_3
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10133
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 10135
    :cond_4
    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 10136
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10137
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v5, v9

    if-ne v5, v9, :cond_5

    .line 10139
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10142
    .end local v0    # "matrixIsIdentity":Z
    .end local v2    # "oldHeight":I
    .end local v3    # "width":I
    :cond_5
    return-void

    :cond_6
    move v0, v5

    .line 10097
    goto :goto_0

    .line 10107
    .restart local v0    # "matrixIsIdentity":Z
    :cond_7
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 10108
    .restart local v1    # "minTop":I
    const/4 v4, 0x0

    .restart local v4    # "yLoc":I
    goto :goto_1

    .line 10114
    .end local v1    # "minTop":I
    .end local v4    # "yLoc":I
    :cond_8
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 0
    .param p1, "delegate"    # Landroid/view/TouchDelegate;

    .prologue
    .line 8966
    iput-object p1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 8967
    return-void
.end method

.method public setTransitionAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 10042
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 10043
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 10044
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    .line 10045
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10046
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10047
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 10048
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/DisplayList;->setAlpha(F)V

    .line 10051
    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 5
    .param p1, "translationX"    # F

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 10418
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 10419
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 10420
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 10422
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10423
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 10424
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 10425
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10426
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 10427
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setTranslationX(F)V

    .line 10429
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 10431
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10434
    :cond_1
    return-void
.end method

.method public setTranslationY(F)V
    .locals 5
    .param p1, "translationY"    # F

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 10460
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 10461
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 10462
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 10463
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10464
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    .line 10465
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 10466
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10467
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 10468
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setTranslationY(F)V

    .line 10470
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 10472
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10475
    :cond_1
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .locals 1
    .param p1, "verticalFadingEdgeEnabled"    # Z

    .prologue
    .line 11585
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 11586
    if-eqz p1, :cond_0

    .line 11587
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 11590
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11592
    :cond_1
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "verticalScrollBarEnabled"    # Z

    .prologue
    .line 11705
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 11706
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11707
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 11708
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11710
    :cond_0
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4397
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 4398
    iput p1, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    .line 4399
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 4400
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 4402
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 6167
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 6168
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 6169
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 6168
    goto :goto_0
.end method

.method public setWillNotCacheDrawing(Z)V
    .locals 2
    .param p1, "willNotCacheDrawing"    # Z

    .prologue
    const/high16 v1, 0x20000

    .line 6502
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6503
    return-void

    .line 6502
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWillNotDraw(Z)V
    .locals 2
    .param p1, "willNotDraw"    # Z

    .prologue
    const/16 v1, 0x80

    .line 6479
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6480
    return-void

    .line 6479
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 10368
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 10369
    return-void
.end method

.method public setY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 10391
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 10392
    return-void
.end method

.method public showContextMenu()Z
    .locals 1

    .prologue
    .line 4639
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 4653
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 4665
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4666
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 4667
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 16921
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 16922
    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 16923
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 16924
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 16925
    return-void
.end method

.method public final startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 23
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p3, "myLocalState"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    .line 17400
    const/16 v19, 0x0

    .line 17402
    .local v19, "okay":Z
    new-instance v21, Landroid/graphics/Point;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Point;-><init>()V

    .line 17403
    .local v21, "shadowSize":Landroid/graphics/Point;
    new-instance v22, Landroid/graphics/Point;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Point;-><init>()V

    .line 17404
    .local v22, "shadowTouchPoint":Landroid/graphics/Point;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 17406
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-gez v3, :cond_1

    .line 17408
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Drag shadow dimensions must not be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 17415
    :cond_1
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    .line 17417
    .local v8, "surface":Landroid/view/Surface;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v21

    iget v7, v0, Landroid/graphics/Point;->y:I

    move/from16 v5, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v11

    .line 17421
    .local v11, "token":Landroid/os/IBinder;
    if-eqz v11, :cond_2

    .line 17422
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 17424
    .local v17, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    :try_start_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 17425
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17427
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 17430
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v20

    .line 17433
    .local v20, "root":Landroid/view/ViewRootImpl;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    .line 17436
    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 17438
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v3, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v14, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v15, v3

    move-object/from16 v16, p1

    invoke-interface/range {v9 .. v16}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v19

    .line 17445
    invoke-virtual {v8}, Landroid/view/Surface;->release()V

    .line 17452
    .end local v11    # "token":Landroid/os/IBinder;
    .end local v17    # "canvas":Landroid/graphics/Canvas;
    .end local v20    # "root":Landroid/view/ViewRootImpl;
    :cond_2
    :goto_0
    return v19

    .line 17427
    .restart local v11    # "token":Landroid/os/IBinder;
    .restart local v17    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v3

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 17447
    .end local v11    # "token":Landroid/os/IBinder;
    .end local v17    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v18

    .line 17448
    .local v18, "e":Ljava/lang/Exception;
    const-string v3, "View"

    const-string v4, "Unable to initiate drag"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17449
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    goto :goto_0
.end method

.method public toGlobalMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 15964
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 15965
    .local v0, "info":Landroid/view/View$AttachInfo;
    if-nez v0, :cond_0

    .line 15966
    const/4 v1, 0x0

    .line 15971
    :goto_0
    return v1

    .line 15969
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/View;->transformMotionEventToGlobal(Landroid/view/MotionEvent;)V

    .line 15970
    iget v1, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v1, v1

    iget v2, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 15971
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toLocalMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 15983
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 15984
    .local v0, "info":Landroid/view/View$AttachInfo;
    if-nez v0, :cond_0

    .line 15985
    const/4 v1, 0x0

    .line 15990
    :goto_0
    return v1

    .line 15988
    :cond_0
    iget v1, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 15989
    invoke-direct {p0, p1}, Landroid/view/View;->transformMotionEventToLocal(Landroid/view/MotionEvent;)V

    .line 15990
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v7, 0x46

    const/16 v9, 0x44

    const/16 v12, 0x2c

    const/16 v11, 0x20

    const/16 v8, 0x2e

    .line 4104
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4105
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4106
    const/16 v6, 0x7b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4107
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4108
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4109
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    sparse-switch v6, :sswitch_data_0

    .line 4113
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4115
    :goto_0
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0x1

    const/4 v10, 0x1

    if-ne v6, v10, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4116
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_2

    const/16 v6, 0x45

    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4117
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v6, v6, 0x80

    const/16 v10, 0x80

    if-ne v6, v10, :cond_3

    move v6, v8

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4118
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_4

    const/16 v6, 0x48

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4119
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_5

    const/16 v6, 0x56

    :goto_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4120
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_6

    const/16 v6, 0x43

    :goto_6
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4121
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v10, 0x200000

    and-int/2addr v6, v10

    if-eqz v6, :cond_7

    const/16 v6, 0x4c

    :goto_7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4122
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4123
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_8

    const/16 v6, 0x52

    :goto_8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4124
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_9

    :goto_9
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4125
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_a

    const/16 v6, 0x53

    :goto_a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4126
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x2000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_b

    .line 4127
    const/16 v6, 0x70

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4131
    :goto_b
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x10000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_d

    const/16 v6, 0x48

    :goto_c
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4132
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x40000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_e

    const/16 v6, 0x41

    :goto_d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4133
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_f

    const/16 v6, 0x49

    :goto_e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4134
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x600000

    and-int/2addr v6, v7

    if-eqz v6, :cond_10

    :goto_f
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4135
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4136
    iget v6, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4137
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4138
    iget v6, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4139
    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4140
    iget v6, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4141
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4142
    iget v6, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4143
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 4144
    .local v1, "id":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 4145
    const-string v6, " #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4146
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4147
    iget-object v4, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 4148
    .local v4, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 4151
    const/high16 v6, -0x1000000

    and-int/2addr v6, v1

    sparse-switch v6, :sswitch_data_1

    .line 4159
    :try_start_0
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 4162
    .local v3, "pkgname":Ljava/lang/String;
    :goto_10
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 4163
    .local v5, "typename":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 4164
    .local v0, "entryname":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4166
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4167
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4168
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4169
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4174
    .end local v0    # "entryname":Ljava/lang/String;
    .end local v3    # "pkgname":Ljava/lang/String;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "typename":Ljava/lang/String;
    :cond_0
    :goto_11
    const-string/jumbo v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 4110
    .end local v1    # "id":I
    :sswitch_0
    const/16 v6, 0x56

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4111
    :sswitch_1
    const/16 v6, 0x49

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4112
    :sswitch_2
    const/16 v6, 0x47

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    move v6, v8

    .line 4115
    goto/16 :goto_1

    :cond_2
    move v6, v8

    .line 4116
    goto/16 :goto_2

    :cond_3
    move v6, v9

    .line 4117
    goto/16 :goto_3

    :cond_4
    move v6, v8

    .line 4118
    goto/16 :goto_4

    :cond_5
    move v6, v8

    .line 4119
    goto/16 :goto_5

    :cond_6
    move v6, v8

    .line 4120
    goto/16 :goto_6

    :cond_7
    move v6, v8

    .line 4121
    goto/16 :goto_7

    :cond_8
    move v6, v8

    .line 4123
    goto/16 :goto_8

    :cond_9
    move v7, v8

    .line 4124
    goto/16 :goto_9

    :cond_a
    move v6, v8

    .line 4125
    goto/16 :goto_a

    .line 4129
    :cond_b
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_c

    const/16 v6, 0x50

    :goto_12
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :cond_c
    move v6, v8

    goto :goto_12

    :cond_d
    move v6, v8

    .line 4131
    goto/16 :goto_c

    :cond_e
    move v6, v8

    .line 4132
    goto/16 :goto_d

    :cond_f
    move v6, v8

    .line 4133
    goto/16 :goto_e

    :cond_10
    move v9, v8

    .line 4134
    goto/16 :goto_f

    .line 4153
    .restart local v1    # "id":I
    .restart local v4    # "r":Landroid/content/res/Resources;
    :sswitch_3
    :try_start_1
    const-string v3, "app"

    .line 4154
    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_10

    .line 4156
    .end local v3    # "pkgname":Ljava/lang/String;
    :sswitch_4
    const-string v3, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4157
    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_10

    .line 4170
    .end local v3    # "pkgname":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_11

    .line 4109
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    .line 4151
    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method

.method transformRect(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 11115
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11116
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 11117
    .local v0, "boundingRect":Landroid/graphics/RectF;
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 11118
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 11119
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 11124
    .end local v0    # "boundingRect":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method unFocus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4893
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->clearFocusInternal(ZZ)V

    .line 4894
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 15153
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 15154
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 15157
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 15133
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 15134
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 15135
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p1}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 15141
    :cond_0
    :goto_0
    return-void

    .line 15138
    :cond_1
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method updateLocalSystemUiVisibility(II)Z
    .locals 3
    .param p1, "localValue"    # I
    .param p2, "localChanges"    # I

    .prologue
    .line 17221
    iget v1, p0, Landroid/view/View;->mSystemUiVisibility:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int v0, v1, v2

    .line 17222
    .local v0, "val":I
    iget v1, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq v0, v1, :cond_0

    .line 17223
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 17224
    const/4 v1, 0x1

    .line 17226
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 15236
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willNotCacheDrawing()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x20000

    .line 6512
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willNotDraw()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 6489
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
