.class public final Lqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbuo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbuo",
        "<",
        "Lqd;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final membersInjector:Lbuj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbuj",
            "<",
            "Lqd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lqe;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lqe;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lbuj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbuj",
            "<",
            "Lqd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-boolean v0, Lqe;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13
    :cond_0
    iput-object p1, p0, Lqe;->membersInjector:Lbuj;

    .line 14
    return-void
.end method

.method public static a(Lbuj;)Lbuo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbuj",
            "<",
            "Lqd;",
            ">;)",
            "Lbuo",
            "<",
            "Lqd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lqe;

    invoke-direct {v0, p0}, Lqe;-><init>(Lbuj;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lqd;

    invoke-direct {v0}, Lqd;-><init>()V

    iget-object v1, p0, Lqe;->membersInjector:Lbuj;

    invoke-interface {v1, v0}, Lbuj;->a(Ljava/lang/Object;)V

    return-object v0
.end method
