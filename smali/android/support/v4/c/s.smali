.class public Landroid/support/v4/c/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/c/r;


# instance fields
.field private final jg:[Ljava/lang/Object;

.field private jh:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-gtz p1, :cond_0

    .line 96
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The max pool size must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_0
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/s;->jg:[Ljava/lang/Object;

    .line 99
    return-void
.end method


# virtual methods
.method public aH()Ljava/lang/Object;
    .locals 4

    .line 104
    iget v0, p0, Landroid/support/v4/c/s;->jh:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 105
    iget v0, p0, Landroid/support/v4/c/s;->jh:I

    add-int/lit8 v0, v0, -0x1

    .line 106
    iget-object v2, p0, Landroid/support/v4/c/s;->jg:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 107
    iget-object v3, p0, Landroid/support/v4/c/s;->jg:[Ljava/lang/Object;

    aput-object v1, v3, v0

    .line 108
    iget v0, p0, Landroid/support/v4/c/s;->jh:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/c/s;->jh:I

    .line 109
    return-object v2

    .line 111
    :cond_0
    return-object v1
.end method

.method public m(Ljava/lang/Object;)Z
    .locals 4

    .line 116
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroid/support/v4/c/s;->jh:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/c/s;->jg:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 117
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already in the pool!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_2
    iget v1, p0, Landroid/support/v4/c/s;->jh:I

    iget-object v2, p0, Landroid/support/v4/c/s;->jg:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 120
    iget-object v0, p0, Landroid/support/v4/c/s;->jg:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/c/s;->jh:I

    aput-object p1, v0, v1

    .line 121
    iget p1, p0, Landroid/support/v4/c/s;->jh:I

    add-int/2addr p1, v3

    iput p1, p0, Landroid/support/v4/c/s;->jh:I

    .line 122
    return v3

    .line 124
    :cond_3
    return v0
.end method
