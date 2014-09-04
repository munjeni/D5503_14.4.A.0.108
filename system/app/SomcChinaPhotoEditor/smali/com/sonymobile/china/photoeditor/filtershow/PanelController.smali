.class public Lcom/sonymobile/china/photoeditor/filtershow/PanelController;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/PanelController$ViewType;,
        Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;,
        Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xc8

.field private static COMPONENT:I = 0x0

.field public static final FLIP_H_TYPE:I = 0x3

.field public static final FLIP_V_TYPE:I = 0x4

.field private static HORIZONTAL_MOVE:I = 0x0

.field public static final MSG_CANCEL_PROCESS_DIALOG:I = 0x0

.field private static PANEL:I = 0x0

.field public static final ROTATE_LEFT_TYPE:I = 0x1

.field public static final ROTATE_RIGHT_TYPE:I = 0x2

.field private static VERTICAL_MOVE:I


# instance fields
.field private mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

.field private mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

.field private mCurrentPanel:Landroid/view/View;

.field private mDisableFilterButtons:Z

.field mHandler:Landroid/os/Handler;

.field private final mImageViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

.field private final mPanels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;",
            ">;"
        }
    .end annotation
.end field

.field private mRowPanel:Landroid/view/View;

.field private mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

.field private final mViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/sonymobile/china/photoeditor/filtershow/PanelController$ViewType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 72
    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->PANEL:I

    .line 74
    sput v1, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->COMPONENT:I

    .line 76
    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->VERTICAL_MOVE:I

    .line 78
    sput v1, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->HORIZONTAL_MOVE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mDisableFilterButtons:Z

    .line 606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    .line 608
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    .line 610
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mImageViews:Ljava/util/Vector;

    .line 612
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    .line 614
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mRowPanel:Landroid/view/View;

    .line 616
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    .line 618
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 620
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 622
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .line 1209
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$2;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mRowPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->HORIZONTAL_MOVE:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->VERTICAL_MOVE:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mDisableFilterButtons:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/PanelController;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mDisableFilterButtons:Z

    return p1
.end method

.method private invisibleActionBar()V
    .locals 3

    .prologue
    .line 1095
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->invisibleHistoryPanel()V

    .line 1096
    iget-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mDisableFilterButtons:Z

    if-nez v1, :cond_0

    .line 1097
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->disableFilterButtons()V

    .line 1098
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mDisableFilterButtons:Z

    .line 1100
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1101
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1102
    return-void
.end method

.method private setEditActionBar(I)V
    .locals 7
    .param p1, "titleId"    # I

    .prologue
    .line 1104
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->invisibleHistoryPanel()V

    .line 1105
    iget-boolean v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mDisableFilterButtons:Z

    if-nez v5, :cond_0

    .line 1106
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->disableFilterButtons()V

    .line 1107
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mDisableFilterButtons:Z

    .line 1109
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1110
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1111
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0c001b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1112
    .local v4, "title":Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1113
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0c0013

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1114
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0c001a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0c001e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1117
    .local v1, "applyButton":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0c001d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1119
    .local v3, "cancelButton":Landroid/widget/Button;
    new-instance v2, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;

    invoke-direct {v2, p0, v1, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 1142
    .local v2, "buttonClickListener":Landroid/view/View$OnClickListener;
    if-eqz v1, :cond_1

    .line 1143
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    :cond_1
    if-eqz v3, :cond_2

    .line 1147
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1149
    :cond_2
    return-void
.end method


# virtual methods
.method public addComponent(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "aPanel"    # Landroid/view/View;
    .param p2, "component"    # Landroid/view/View;

    .prologue
    .line 640
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;

    .line 641
    .local v0, "panel":Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;
    if-nez v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->addView(Landroid/view/View;)V

    .line 645
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    new-instance v2, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$ViewType;

    sget v3, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->COMPONENT:I

    invoke-direct {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$ViewType;-><init>(I)V

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addImageView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 650
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v0, p1

    .line 651
    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 652
    .local v0, "imageShow":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-virtual {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setPanelController(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)V

    .line 653
    return-void
.end method

.method public addPanel(Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "container"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 634
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$ViewType;

    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->PANEL:I

    invoke-direct {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$ViewType;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 629
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$ViewType;

    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->COMPONENT:I

    invoke-direct {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$ViewType;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    return-void
.end method

.method public applyFilter()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1152
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    instance-of v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->showProgressBar()V

    .line 1154
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->applyChanges()V

    .line 1158
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->requestFilteredImages()V

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    instance-of v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;

    if-eqz v0, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->setNeedApply(Z)V

    .line 1163
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    .line 1168
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    instance-of v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;

    if-nez v0, :cond_2

    .line 1169
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 1171
    :cond_2
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mDisableFilterButtons:Z

    if-eqz v0, :cond_3

    .line 1172
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->enableFilterButtons()V

    .line 1173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mDisableFilterButtons:Z

    .line 1175
    :cond_3
    return-void
.end method

.method public applyStamp(Z)V
    .locals 2
    .param p1, "update"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1190
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    instance-of v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    instance-of v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->setNeedApply(Z)V

    .line 1195
    if-eqz p1, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    .line 1199
    :cond_0
    return-void
.end method

.method public cancelProcessDialog()V
    .locals 3

    .prologue
    .line 1223
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1224
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1225
    return-void
.end method

.method public disableEditActionBar()V
    .locals 3

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1179
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->disableEditToolbar()V

    .line 1180
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1181
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1182
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1183
    return-void
.end method

.method public ensureFilter(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f07006a

    const v6, 0x7f070069

    .line 839
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v2

    .line 840
    .local v2, "preset":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    invoke-virtual {v2, p1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->getFilter(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 841
    .local v1, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    if-eqz v1, :cond_1

    .line 844
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 848
    :cond_0
    const/4 v1, 0x0

    .line 856
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 858
    if-eqz v1, :cond_5

    .line 859
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v3, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->buildTextFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 867
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 869
    if-eqz v1, :cond_6

    .line 870
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    instance-of v3, v3, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    if-eqz v3, :cond_3

    move-object v3, v1

    .line 871
    check-cast v3, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    check-cast v4, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->getDoodles()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->addDoodles(Ljava/util/Vector;)V

    .line 886
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setCurrentFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)V

    .line 887
    return-void

    .line 850
    :cond_4
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 851
    .local v0, "copy":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 852
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 853
    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->getFilter(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v1

    goto :goto_0

    .line 861
    .end local v0    # "copy":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    new-instance v4, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-direct {v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->buildTextFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 863
    invoke-virtual {v1, p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0, v1, p1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    goto :goto_1

    .line 876
    :cond_6
    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;

    .end local v1    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-direct {v1}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;-><init>()V

    .line 877
    .restart local v1    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-virtual {v1, p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 878
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    instance-of v3, v3, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    if-eqz v3, :cond_7

    move-object v3, v1

    .line 879
    check-cast v3, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    check-cast v4, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->getDoodles()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->addDoodles(Ljava/util/Vector;)V

    .line 883
    :cond_7
    invoke-virtual {p0, v1, p1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    goto :goto_2
.end method

.method public getCurrentImage()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    return-object v0
.end method

.method public getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    return-object v0
.end method

.method public getMasterImage()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    return-object v0
.end method

.method public isProcessDialogShowing()Z
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isProcessDialogShowing()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 669
    :cond_0
    const/4 v0, 0x1

    .line 672
    :goto_0
    return v0

    .line 671
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->applyFilter()V

    .line 672
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 702
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$ViewType;

    .line 703
    .local v0, "type":Lcom/sonymobile/china/photoeditor/filtershow/PanelController$ViewType;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$ViewType;->type()I

    move-result v1

    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->PANEL:I

    if-ne v1, v2, :cond_1

    .line 704
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$ViewType;->type()I

    move-result v1

    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->COMPONENT:I

    if-ne v1, v2, :cond_0

    .line 706
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onNewValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 676
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->onNewValue(I)V

    .line 677
    return-void
.end method

.method public resetParameters()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 657
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->resetParameter()V

    .line 659
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->select()V

    .line 661
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mDisableFilterButtons:Z

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->enableFilterButtons()V

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mDisableFilterButtons:Z

    .line 665
    :cond_1
    return-void
.end method

.method public setActivity(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .line 626
    return-void
.end method

.method public setCurrentPanel(Landroid/view/View;)V
    .locals 0
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 684
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 685
    return-void
.end method

.method public setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .locals 2
    .param p1, "filter"    # Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 830
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 831
    .local v0, "copy":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->add(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)V

    .line 832
    invoke-virtual {v0, p2}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 833
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setIsFx(Z)V

    .line 834
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 835
    return-object p1
.end method

.method public setMasterImage(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V
    .locals 0
    .param p1, "imageShow"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 698
    return-void
.end method

.method public setRowPanel(Landroid/view/View;)V
    .locals 0
    .param p1, "rowPanel"    # Landroid/view/View;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mRowPanel:Landroid/view/View;

    .line 689
    return-void
.end method

.method public setUtilityPanel(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "utilityPanel"    # Landroid/view/View;
    .param p3, "textView"    # Landroid/view/View;
    .param p4, "aspectButton"    # Landroid/view/View;

    .prologue
    .line 693
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    .line 694
    return-void
.end method

.method public showComponent(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 890
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    if-eqz v8, :cond_5

    .line 891
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0c0071

    if-ne v8, v9, :cond_0

    .line 892
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->setStampStatus(Z)V

    .line 894
    :cond_0
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0c0072

    if-eq v8, v9, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0c0076

    if-eq v8, v9, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0c0071

    if-eq v8, v9, :cond_1

    .line 897
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;

    .line 898
    .local v2, "current":Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;
    const/4 v8, -0x1

    sget v9, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->VERTICAL_MOVE:I

    invoke-virtual {v2, v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->unselect(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 899
    .local v0, "anim1":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 900
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    if-eqz v8, :cond_1

    .line 901
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->select()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 902
    .local v1, "anim2":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 906
    .end local v0    # "anim1":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "anim2":Landroid/view/ViewPropertyAnimator;
    .end local v2    # "current":Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    if-eqz v8, :cond_2

    .line 907
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->unselect()V

    .line 909
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->hideAspectButtons()V

    .line 910
    instance-of v8, p1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    if-eqz v8, :cond_3

    .line 911
    const v8, 0x7f0c0023

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 912
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->invisibleActionBar()V

    .line 913
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getCurrentStyleImageSmallFilter()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    move-result-object v7

    .line 914
    .local v7, "styleFilter":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;
    if-eqz v7, :cond_3

    .line 915
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v7}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getImageFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v9

    invoke-virtual {v7}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getSetBorder()Z

    move-result v10

    invoke-virtual {v8, v7, v9, v10}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->useImageFilter(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)V

    .line 917
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8, v7}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setSelectFaceToolbar(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;)V

    .line 920
    .end local v7    # "styleFilter":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 1088
    .end local p1    # "view":Landroid/view/View;
    :cond_4
    :goto_0
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    if-eqz v8, :cond_5

    .line 1089
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->select()V

    .line 1092
    :cond_5
    return-void

    .line 922
    .restart local p1    # "view":Landroid/view/View;
    :sswitch_0
    const v8, 0x7f070035

    invoke-direct {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->setEditActionBar(I)V

    .line 923
    const v8, 0x7f0c0024

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 924
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070035

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 925
    .local v3, "ename":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 926
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setStraightenToolbar()V

    goto :goto_0

    .line 930
    .end local v3    # "ename":Ljava/lang/String;
    :sswitch_1
    const v8, 0x7f070036

    invoke-direct {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->setEditActionBar(I)V

    .line 931
    const v8, 0x7f0c0025

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 932
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070036

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 933
    .restart local v3    # "ename":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 934
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 935
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    instance-of v8, v8, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    iget-boolean v8, v8, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->firstTimeCropDisplayed:Z

    if-eqz v8, :cond_6

    .line 936
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    check-cast v8, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->applyClear()V

    .line 937
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->firstTimeCropDisplayed:Z

    .line 939
    :cond_6
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setCropToolbar()V

    goto :goto_0

    .line 943
    .end local v3    # "ename":Ljava/lang/String;
    :sswitch_2
    const v8, 0x7f070037

    invoke-direct {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->setEditActionBar(I)V

    .line 944
    const v8, 0x7f0c0026

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 945
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070037

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 946
    .restart local v3    # "ename":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 947
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setRotateToolbar()V

    goto/16 :goto_0

    .line 958
    .end local v3    # "ename":Ljava/lang/String;
    :sswitch_3
    const v8, 0x7f0c0023

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 959
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070033

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 960
    .restart local v3    # "ename":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 966
    .end local v3    # "ename":Ljava/lang/String;
    :sswitch_4
    const v8, 0x7f0c0029

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 967
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f07002a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 968
    .restart local v3    # "ename":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 973
    .end local v3    # "ename":Ljava/lang/String;
    :sswitch_5
    const v8, 0x7f0c0023

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 974
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f07002b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 975
    .restart local v3    # "ename":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 980
    .end local v3    # "ename":Ljava/lang/String;
    :sswitch_6
    const v8, 0x7f0c0023

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 981
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f07002d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 982
    .restart local v3    # "ename":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 983
    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 987
    .end local v3    # "ename":Ljava/lang/String;
    :sswitch_7
    const v8, 0x7f0c0023

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 988
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f07002e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 989
    .restart local v3    # "ename":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 994
    .end local v3    # "ename":Ljava/lang/String;
    :sswitch_8
    const v8, 0x7f0c0023

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 995
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f07002f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 996
    .restart local v3    # "ename":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 997
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 998
    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1002
    .end local v3    # "ename":Ljava/lang/String;
    :sswitch_9
    const v8, 0x7f0c0023

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 1003
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070030

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1004
    .restart local v3    # "ename":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1009
    .end local v3    # "ename":Ljava/lang/String;
    :sswitch_a
    const v8, 0x7f0c0023

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 1010
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070029

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1011
    .restart local v3    # "ename":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1016
    .end local v3    # "ename":Ljava/lang/String;
    :sswitch_b
    const v8, 0x7f0c0023

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 1017
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f07002c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1018
    .restart local v3    # "ename":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1023
    .end local v3    # "ename":Ljava/lang/String;
    :sswitch_c
    const v8, 0x7f0c0023

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 1024
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070031

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1025
    .restart local v3    # "ename":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v8, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1041
    .end local v3    # "ename":Ljava/lang/String;
    :sswitch_d
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    instance-of v8, v8, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;

    if-eqz v8, :cond_7

    .line 1042
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    check-cast v8, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->applyChanges()V

    .line 1045
    :cond_7
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v8

    instance-of v8, v8, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;

    if-eqz v8, :cond_8

    .line 1046
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->setNeedApply(Z)V

    .line 1047
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    .line 1050
    :cond_8
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1055
    :sswitch_e
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->applyStamp(Z)V

    .line 1056
    const v8, 0x7f0c002a

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 1058
    check-cast p1, Landroid/widget/ImageButton;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1059
    .local v5, "resId":I
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1061
    .local v6, "stamp":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070068

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1063
    .restart local v3    # "ename":Ljava/lang/String;
    new-instance v8, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;

    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getDisplayedImageBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v8, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v4

    .line 1067
    .local v4, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setCurrentFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)V

    .line 1068
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    check-cast v8, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;

    invoke-virtual {v8, v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->setStamp(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1072
    .end local v3    # "ename":Ljava/lang/String;
    .end local v4    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .end local v5    # "resId":I
    .end local v6    # "stamp":Landroid/graphics/Bitmap;
    .restart local p1    # "view":Landroid/view/View;
    :sswitch_f
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    if-eqz v8, :cond_4

    .line 1073
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f07006a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1075
    .restart local v3    # "ename":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1080
    .end local v3    # "ename":Ljava/lang/String;
    :sswitch_10
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    if-eqz v8, :cond_4

    .line 1081
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070069

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1083
    .restart local v3    # "ename":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 920
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0034 -> :sswitch_d
        0x7f0c005e -> :sswitch_1
        0x7f0c005f -> :sswitch_2
        0x7f0c0060 -> :sswitch_0
        0x7f0c0065 -> :sswitch_8
        0x7f0c0066 -> :sswitch_a
        0x7f0c0067 -> :sswitch_3
        0x7f0c0068 -> :sswitch_5
        0x7f0c0069 -> :sswitch_c
        0x7f0c006a -> :sswitch_b
        0x7f0c006b -> :sswitch_4
        0x7f0c006c -> :sswitch_9
        0x7f0c006d -> :sswitch_6
        0x7f0c006e -> :sswitch_7
        0x7f0c0071 -> :sswitch_e
        0x7f0c0072 -> :sswitch_f
        0x7f0c0076 -> :sswitch_10
    .end sparse-switch
.end method

.method public showDefaultImageView()V
    .locals 2

    .prologue
    .line 726
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 727
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setCurrentFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)V

    .line 728
    return-void
.end method

.method public showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 711
    const/4 v1, 0x0

    .line 712
    .local v1, "image":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 713
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 714
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 715
    instance-of v3, v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 716
    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    goto :goto_0

    .line 719
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 722
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return-object v1
.end method

.method public showPanel(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v13, -0x1

    const v12, 0x7f0c007f

    const v11, 0x7f0c007e

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 731
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 732
    const/4 v6, 0x0

    .line 733
    .local v6, "removedUtilityPanel":Z
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;

    .line 734
    .local v3, "current":Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v7}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->disableEditActionBar()V

    .line 736
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v7}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->unselect()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 737
    .local v1, "anim1":Landroid/view/ViewPropertyAnimator;
    const/4 v6, 0x1

    .line 738
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 739
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    if-ne v7, p1, :cond_0

    .line 740
    sget v7, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->VERTICAL_MOVE:I

    invoke-virtual {v3, v13, v7}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->select(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 741
    .local v2, "anim2":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 742
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showDefaultImageView()V

    .line 746
    .end local v1    # "anim1":Landroid/view/ViewPropertyAnimator;
    .end local v2    # "anim2":Landroid/view/ViewPropertyAnimator;
    :cond_0
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    if-ne v7, p1, :cond_2

    .line 823
    :cond_1
    :goto_0
    return-void

    .line 749
    :cond_2
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0c007d

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    if-eqz v7, :cond_3

    .line 752
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v7, v9}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->setStampStatus(Z)V

    .line 753
    invoke-virtual {p0, v10}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->applyStamp(Z)V

    .line 756
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0c007d

    if-ne v7, v8, :cond_b

    .line 757
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v7, v10}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setStampVisibility(Z)V

    .line 761
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0c0078

    if-ne v7, v8, :cond_c

    .line 762
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v7, v10}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setFaceRectsVisibility(Z)V

    .line 767
    :goto_2
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v7}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    .line 769
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;

    .line 770
    .local v5, "panel":Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;
    if-nez v6, :cond_d

    .line 771
    const/4 v4, -0x1

    .line 772
    .local v4, "currentPos":I
    if-eqz v3, :cond_4

    .line 773
    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->getPosition()I

    move-result v4

    .line 775
    :cond_4
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v11, :cond_5

    .line 776
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    instance-of v7, v7, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

    if-eqz v7, :cond_5

    .line 777
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    check-cast v7, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

    invoke-virtual {v7, v10}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;->setFilterVisibility(Z)V

    .line 778
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v7, v10}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    .line 781
    :cond_5
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v12, :cond_6

    .line 782
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    instance-of v7, v7, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    if-eqz v7, :cond_6

    .line 783
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    check-cast v7, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    invoke-virtual {v7, v10}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->setFilterVisibility(Z)V

    .line 784
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v7, v10}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    .line 787
    :cond_6
    sget v7, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->HORIZONTAL_MOVE:I

    invoke-virtual {v5, v4, v7}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->select(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 788
    .restart local v1    # "anim1":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 789
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v11, :cond_7

    .line 790
    const v7, 0x7f0c002d

    invoke-virtual {p0, v7}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 791
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    if-eqz v7, :cond_7

    .line 792
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v7, v9}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->setTextEditContainerVisibility(I)V

    .line 796
    :cond_7
    if-eqz v3, :cond_8

    .line 797
    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->getPosition()I

    move-result v7

    sget v8, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->HORIZONTAL_MOVE:I

    invoke-virtual {v3, v7, v8}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->unselect(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 798
    .restart local v2    # "anim2":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 799
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v11, :cond_8

    .line 800
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->setTextEditContainerVisibility(I)V

    .line 813
    .end local v1    # "anim1":Landroid/view/ViewPropertyAnimator;
    .end local v2    # "anim2":Landroid/view/ViewPropertyAnimator;
    .end local v4    # "currentPos":I
    :cond_8
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v11, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v12, :cond_9

    .line 814
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showDefaultImageView()V

    .line 816
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v12, :cond_a

    .line 817
    const v7, 0x7f0c002c

    invoke-virtual {p0, v7}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 819
    :cond_a
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    .line 820
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    if-eqz v7, :cond_1

    .line 821
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v7}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->clearSelectButton()V

    goto/16 :goto_0

    .line 759
    .end local v5    # "panel":Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;
    :cond_b
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v7, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setStampVisibility(Z)V

    goto/16 :goto_1

    .line 764
    :cond_c
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v7, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setFaceRectsVisibility(Z)V

    goto/16 :goto_2

    .line 804
    .restart local v5    # "panel":Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;
    :cond_d
    sget v7, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->VERTICAL_MOVE:I

    invoke-virtual {v5, v13, v7}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->select(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 805
    .local v0, "anim":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 806
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v11, :cond_8

    .line 807
    const v7, 0x7f0c002d

    invoke-virtual {p0, v7}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showImageView(I)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 808
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    if-eqz v7, :cond_8

    .line 809
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v7, v9}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->setTextEditContainerVisibility(I)V

    goto :goto_3
.end method

.method public showParameter(Z)V
    .locals 1
    .param p1, "s"    # Z

    .prologue
    .line 680
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mUtilityPanel:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 681
    return-void
.end method
