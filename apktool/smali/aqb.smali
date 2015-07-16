.class public Laqb;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mExceptionReporter:Lban;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lban;

    invoke-direct {v0}, Lban;-><init>()V

    invoke-direct {p0, p1, v0}, Laqb;-><init>(Landroid/content/Context;Lban;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lban;

    invoke-direct {v0}, Lban;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Laqb;-><init>(Landroid/content/Context;ILjava/util/List;Lban;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/util/List;Lban;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;",
            "Lban;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 48
    iput-object p4, p0, Laqb;->mExceptionReporter:Lban;

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lban;)V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f0400be

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 38
    iput-object p2, p0, Laqb;->mExceptionReporter:Lban;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lban;

    invoke-direct {v0}, Lban;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Laqb;-><init>(Landroid/content/Context;[Ljava/lang/Object;Lban;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Ljava/lang/Object;Lban;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;",
            "Lban;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    const v0, 0x7f040013

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 53
    iput-object p3, p0, Laqb;->mExceptionReporter:Lban;

    .line 54
    return-void
.end method

.method static synthetic a(Laqb;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lbhp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 82
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Loq;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Loq;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    throw v0

    .line 69
    :cond_1
    iget-object v1, p0, Laqb;->mExceptionReporter:Lban;

    invoke-virtual {v1, v0}, Lban;->a(Ljava/lang/Throwable;)V

    .line 75
    new-instance v0, Laqb$1;

    invoke-direct {v0, p0}, Laqb$1;-><init>(Laqb;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
