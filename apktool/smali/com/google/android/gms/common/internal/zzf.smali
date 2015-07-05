.class public final Lcom/google/android/gms/common/internal/zzf;
.super Ljava/lang/Object;


# instance fields
.field private final zzFN:Landroid/accounts/Account;

.field private final zzMM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzMf:I

.field private final zzMg:Landroid/view/View;

.field private final zzMh:Ljava/lang/String;

.field private final zzMi:Ljava/lang/String;

.field private final zzPr:Lcom/google/android/gms/internal/zzus;

.field private zzPs:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzus;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzFN:Landroid/accounts/Account;

    if-nez p2, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzMM:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/zzf;->zzMg:Landroid/view/View;

    iput p3, p0, Lcom/google/android/gms/common/internal/zzf;->zzMf:I

    iput-object p5, p0, Lcom/google/android/gms/common/internal/zzf;->zzMh:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/common/internal/zzf;->zzMi:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/zzf;->zzPr:Lcom/google/android/gms/internal/zzus;

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzFN:Landroid/accounts/Account;

    return-object v0
.end method

.method public final getAccountName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzFN:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzFN:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zza(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzPs:Ljava/lang/Integer;

    return-void
.end method

.method public final zziM()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zziN()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final zziN()Landroid/accounts/Account;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzFN:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzFN:Landroid/accounts/Account;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zziO()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzMf:I

    return v0
.end method

.method public final zziP()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzMM:Ljava/util/List;

    return-object v0
.end method

.method public final zziQ()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzMM:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzMM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final zziR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzMh:Ljava/lang/String;

    return-object v0
.end method

.method public final zziS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzMi:Ljava/lang/String;

    return-object v0
.end method

.method public final zziT()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzMg:Landroid/view/View;

    return-object v0
.end method

.method public final zziU()Lcom/google/android/gms/internal/zzus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzPr:Lcom/google/android/gms/internal/zzus;

    return-object v0
.end method

.method public final zziV()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzPs:Ljava/lang/Integer;

    return-object v0
.end method
