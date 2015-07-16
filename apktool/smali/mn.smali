.class public final Lmn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lawo;

.field final b:Lafo;

.field protected final c:Landroid/content/ComponentCallbacks2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v0

    invoke-static {}, Lafo;->a()Lafo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmn;-><init>(Lawo;Lafo;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Lawo;Lafo;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lmn$1;

    invoke-direct {v0, p0}, Lmn$1;-><init>(Lmn;)V

    iput-object v0, p0, Lmn;->c:Landroid/content/ComponentCallbacks2;

    .line 27
    iput-object p1, p0, Lmn;->a:Lawo;

    .line 28
    iput-object p2, p0, Lmn;->b:Lafo;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmn;->c:Landroid/content/ComponentCallbacks2;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 33
    return-void
.end method
