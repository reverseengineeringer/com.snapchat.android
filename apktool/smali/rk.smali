.class public final Lrk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbuj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbuj",
        "<",
        "Lrj;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCashErrorReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lqg;",
            ">;"
        }
    .end annotation
.end field

.field private final mSquareProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lsn;",
            ">;"
        }
    .end annotation
.end field

.field private final supertypeInjector:Lbuj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbuj",
            "<",
            "Lqv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lrk;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lrk;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lbuj;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbuj",
            "<",
            "Lqv;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lqg;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lsn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lrk;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lrk;->supertypeInjector:Lbuj;

    .line 19
    sget-boolean v0, Lrk;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 20
    :cond_1
    iput-object p2, p0, Lrk;->mCashErrorReporterProvider:Ljavax/inject/Provider;

    .line 21
    sget-boolean v0, Lrk;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_2
    iput-object p3, p0, Lrk;->mSquareProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method

.method public static a(Lbuj;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbuj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbuj",
            "<",
            "Lqv;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lqg;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lsn;",
            ">;)",
            "Lbuj",
            "<",
            "Lrj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lrk;

    invoke-direct {v0, p0, p1, p2}, Lrk;-><init>(Lbuj;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    check-cast p1, Lrj;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lrk;->supertypeInjector:Lbuj;

    invoke-interface {v0, p1}, Lbuj;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lrk;->mCashErrorReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqg;

    iput-object v0, p1, Lrj;->mCashErrorReporter:Lqg;

    iget-object v0, p0, Lrk;->mSquareProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsn;

    iput-object v0, p1, Lrj;->mSquareProvider:Lsn;

    return-void
.end method
