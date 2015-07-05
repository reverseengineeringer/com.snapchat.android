.class public final Llv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lavq;

.field final b:Laeo;

.field protected final c:Landroid/content/ComponentCallbacks2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lavq;->a()Lavq;

    move-result-object v0

    invoke-static {}, Laeo;->a()Laeo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Llv;-><init>(Lavq;Laeo;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Lavq;Laeo;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Llv$1;

    invoke-direct {v0, p0}, Llv$1;-><init>(Llv;)V

    iput-object v0, p0, Llv;->c:Landroid/content/ComponentCallbacks2;

    .line 27
    iput-object p1, p0, Llv;->a:Lavq;

    .line 28
    iput-object p2, p0, Llv;->b:Laeo;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Llv;->c:Landroid/content/ComponentCallbacks2;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 33
    return-void
.end method
