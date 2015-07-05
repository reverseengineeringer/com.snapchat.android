.class final Lanq;
.super Lbfm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanq$a;
    }
.end annotation


# instance fields
.field private final a:Laje;

.field private final b:Laip;
    .annotation build Lcgc;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Laje;Laip;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lbfm;-><init>()V

    .line 28
    iput-object p1, p0, Lanq;->a:Laje;

    .line 29
    iput-object p2, p0, Lanq;->b:Laip;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Laje;Laip;B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lanq;-><init>(Laje;Laip;)V

    return-void
.end method


# virtual methods
.method public final a()Laje;
    .locals 1
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lanq;->f()V

    .line 35
    iget-object v0, p0, Lanq;->a:Laje;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lanq;->f()V

    .line 41
    iget-object v0, p0, Lanq;->b:Laip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanq;->b:Laip;

    invoke-virtual {v0}, Laip;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lanq;->b:Laip;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lanq;->b:Laip;

    invoke-virtual {v0}, Laip;->e()V

    .line 58
    :cond_0
    return-void
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lanq;->f()V

    .line 47
    iget-object v0, p0, Lanq;->b:Laip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanq;->b:Laip;

    invoke-virtual {v0}, Laip;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
