.class final Lcom/google/android/gms/internal/b;
.super Lcom/google/android/gms/common/api/f;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Ljava/lang/Object;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)Lcom/google/android/gms/common/api/j;
    .locals 6

    check-cast p4, Lcom/google/android/gms/internal/f;

    if-nez p4, :cond_0

    sget-object p4, Lcom/google/android/gms/internal/f;->FQ:Lcom/google/android/gms/internal/f;

    :cond_0
    new-instance p4, Lcom/google/android/gms/internal/i;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)V

    return-object p4
.end method
