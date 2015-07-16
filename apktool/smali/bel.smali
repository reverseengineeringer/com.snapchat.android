.class public final Lbel;
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
        "Lbek;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mExceptionReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lban;",
            ">;"
        }
    .end annotation
.end field

.field private final supertypeInjector:Lbvk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbvk",
            "<",
            "Lcom/squareup/otto/Bus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lbel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbel;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lbvk;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvk",
            "<",
            "Lcom/squareup/otto/Bus;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lban;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-boolean v0, Lbel;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_0
    iput-object p1, p0, Lbel;->supertypeInjector:Lbvk;

    .line 17
    sget-boolean v0, Lbel;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_1
    iput-object p2, p0, Lbel;->mExceptionReporterProvider:Ljavax/inject/Provider;

    .line 19
    return-void
.end method

.method public static a(Lbvk;Ljavax/inject/Provider;)Lbvk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvk",
            "<",
            "Lcom/squareup/otto/Bus;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lban;",
            ">;)",
            "Lbvk",
            "<",
            "Lbek;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lbel;

    invoke-direct {v0, p0, p1}, Lbel;-><init>(Lbvk;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 9
    check-cast p1, Lbek;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lbel;->supertypeInjector:Lbvk;

    invoke-interface {v0, p1}, Lbvk;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lbel;->mExceptionReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lban;

    iput-object v0, p1, Lbek;->mExceptionReporter:Lban;

    return-void
.end method
