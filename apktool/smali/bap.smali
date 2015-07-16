.class public final Lbap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbvp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbvp",
        "<",
        "Lbao;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final crashSamplerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lbah;",
            ">;"
        }
    .end annotation
.end field

.field private final releaseManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/util/debug/ReleaseManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lbap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbap;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lbah;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/util/debug/ReleaseManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-boolean v0, Lbap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14
    :cond_0
    iput-object p1, p0, Lbap;->crashSamplerProvider:Ljavax/inject/Provider;

    .line 15
    sget-boolean v0, Lbap;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_1
    iput-object p2, p0, Lbap;->releaseManagerProvider:Ljavax/inject/Provider;

    .line 17
    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbvp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lbah;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/util/debug/ReleaseManager;",
            ">;)",
            "Lbvp",
            "<",
            "Lbao;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lbap;

    invoke-direct {v0, p0, p1}, Lbap;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 7
    new-instance v2, Lbao;

    iget-object v0, p0, Lbap;->crashSamplerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbah;

    iget-object v1, p0, Lbap;->releaseManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-direct {v2, v0, v1}, Lbao;-><init>(Lbah;Lcom/snapchat/android/util/debug/ReleaseManager;)V

    return-object v2
.end method
