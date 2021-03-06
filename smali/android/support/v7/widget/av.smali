.class public Landroid/support/v7/widget/av;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDuration:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private pg:I

.field ph:I

.field private pi:Z

.field private pj:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 11527
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/av;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 11528
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    .line 11546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11512
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/av;->ph:I

    .line 11516
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/av;->pi:Z

    .line 11520
    iput v0, p0, Landroid/support/v7/widget/av;->pj:I

    .line 11547
    iput p1, p0, Landroid/support/v7/widget/av;->pg:I

    .line 11548
    iput p2, p0, Landroid/support/v7/widget/av;->mDy:I

    .line 11549
    iput p3, p0, Landroid/support/v7/widget/av;->mDuration:I

    .line 11550
    iput-object p4, p0, Landroid/support/v7/widget/av;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11551
    return-void
.end method


# virtual methods
.method public final a(IIILandroid/view/animation/Interpolator;)V
    .locals 0

    .line 11669
    iput p1, p0, Landroid/support/v7/widget/av;->pg:I

    .line 11670
    iput p2, p0, Landroid/support/v7/widget/av;->mDy:I

    .line 11671
    iput p3, p0, Landroid/support/v7/widget/av;->mDuration:I

    .line 11672
    iput-object p4, p0, Landroid/support/v7/widget/av;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11673
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/av;->pi:Z

    .line 11674
    return-void
.end method

.method final b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 5

    .line 11577
    iget v0, p0, Landroid/support/v7/widget/av;->ph:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 11578
    iget v0, p0, Landroid/support/v7/widget/av;->ph:I

    .line 11579
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/av;->ph:I

    .line 11580
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 11581
    iput-boolean v1, p0, Landroid/support/v7/widget/av;->pi:Z

    .line 11582
    return-void

    .line 11584
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/av;->pi:Z

    if-eqz v0, :cond_6

    .line 11585
    iget-object v0, p0, Landroid/support/v7/widget/av;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/av;->mDuration:I

    if-gtz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/av;->mDuration:I

    if-gtz v0, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Scroll duration must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11586
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/av;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_4

    .line 11587
    iget v0, p0, Landroid/support/v7/widget/av;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_3

    .line 11588
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/az;

    iget v0, p0, Landroid/support/v7/widget/av;->pg:I

    iget v2, p0, Landroid/support/v7/widget/av;->mDy:I

    invoke-virtual {p1, v0, v2, v1, v1}, Landroid/support/v7/widget/az;->b(IIII)I

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/support/v7/widget/az;->f(III)V

    goto :goto_0

    .line 11590
    :cond_3
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/az;

    iget v0, p0, Landroid/support/v7/widget/av;->pg:I

    iget v2, p0, Landroid/support/v7/widget/av;->mDy:I

    iget v3, p0, Landroid/support/v7/widget/av;->mDuration:I

    invoke-virtual {p1, v0, v2, v3}, Landroid/support/v7/widget/az;->f(III)V

    goto :goto_0

    .line 11593
    :cond_4
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/az;

    iget v0, p0, Landroid/support/v7/widget/av;->pg:I

    iget v2, p0, Landroid/support/v7/widget/av;->mDy:I

    iget v3, p0, Landroid/support/v7/widget/av;->mDuration:I

    iget-object v4, p0, Landroid/support/v7/widget/av;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/support/v7/widget/az;->b(IIILandroid/view/animation/Interpolator;)V

    .line 11596
    :goto_0
    iget p1, p0, Landroid/support/v7/widget/av;->pj:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/av;->pj:I

    .line 11597
    iget p1, p0, Landroid/support/v7/widget/av;->pj:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_5

    .line 11600
    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11603
    :cond_5
    iput-boolean v1, p0, Landroid/support/v7/widget/av;->pi:Z

    return-void

    .line 11605
    :cond_6
    iput v1, p0, Landroid/support/v7/widget/av;->pj:I

    .line 11607
    return-void
.end method
