.class public final Lmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbvk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbvk",
        "<",
        "Lcom/snapchat/android/SnapchatApplication;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lbvk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbvk",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Laze;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/util/debug/ReleaseManager;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lbaw;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lna;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Laej;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lacy;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lpm;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lxv;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lbam;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Laph;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lafg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lmy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lmy;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lbvk;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvk",
            "<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Laze;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/util/debug/ReleaseManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lbaw;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lna;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Laej;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lacy;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lpm;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lxv;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lbam;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Laph;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lafg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-boolean v0, Lmy;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lmy;->b:Lbvk;

    .line 37
    sget-boolean v0, Lmy;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_1
    iput-object p2, p0, Lmy;->c:Ljavax/inject/Provider;

    .line 39
    sget-boolean v0, Lmy;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_2
    iput-object p3, p0, Lmy;->d:Ljavax/inject/Provider;

    .line 41
    sget-boolean v0, Lmy;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_3
    iput-object p4, p0, Lmy;->e:Ljavax/inject/Provider;

    .line 43
    sget-boolean v0, Lmy;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_4
    iput-object p5, p0, Lmy;->f:Ljavax/inject/Provider;

    .line 45
    sget-boolean v0, Lmy;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_5
    iput-object p6, p0, Lmy;->g:Ljavax/inject/Provider;

    .line 47
    sget-boolean v0, Lmy;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_6
    iput-object p7, p0, Lmy;->h:Ljavax/inject/Provider;

    .line 49
    sget-boolean v0, Lmy;->a:Z

    if-nez v0, :cond_7

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_7
    iput-object p8, p0, Lmy;->i:Ljavax/inject/Provider;

    .line 51
    sget-boolean v0, Lmy;->a:Z

    if-nez v0, :cond_8

    if-nez p9, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_8
    iput-object p9, p0, Lmy;->j:Ljavax/inject/Provider;

    .line 53
    sget-boolean v0, Lmy;->a:Z

    if-nez v0, :cond_9

    if-nez p10, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_9
    iput-object p10, p0, Lmy;->k:Ljavax/inject/Provider;

    .line 55
    sget-boolean v0, Lmy;->a:Z

    if-nez v0, :cond_a

    if-nez p11, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_a
    iput-object p11, p0, Lmy;->l:Ljavax/inject/Provider;

    .line 57
    sget-boolean v0, Lmy;->a:Z

    if-nez v0, :cond_b

    if-nez p12, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_b
    iput-object p12, p0, Lmy;->m:Ljavax/inject/Provider;

    .line 59
    return-void
.end method

.method public static a(Lbvk;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbvk;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvk",
            "<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Laze;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/util/debug/ReleaseManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lbaw;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lna;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Laej;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lacy;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lpm;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lxv;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lbam;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Laph;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lafg;",
            ">;)",
            "Lbvk",
            "<",
            "Lcom/snapchat/android/SnapchatApplication;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lmy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lmy;-><init>(Lbvk;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 19
    check-cast p1, Lcom/snapchat/android/SnapchatApplication;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lmy;->b:Lbvk;

    invoke-interface {v0, p1}, Lbvk;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lmy;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laze;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->f:Laze;

    iget-object v0, p0, Lmy;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/debug/ReleaseManager;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->g:Lcom/snapchat/android/util/debug/ReleaseManager;

    iget-object v0, p0, Lmy;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbaw;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->h:Lbaw;

    iget-object v0, p0, Lmy;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->i:Lna;

    iget-object v0, p0, Lmy;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laej;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->j:Laej;

    iget-object v0, p0, Lmy;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacy;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->k:Lacy;

    iget-object v0, p0, Lmy;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpm;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->l:Lpm;

    iget-object v0, p0, Lmy;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->m:Lxv;

    iget-object v0, p0, Lmy;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbam;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->n:Lbam;

    iget-object v0, p0, Lmy;->l:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laph;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->o:Laph;

    iget-object v0, p0, Lmy;->m:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->p:Lafg;

    return-void
.end method
