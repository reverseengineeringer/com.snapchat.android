.class public final Laff;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field private final f:Landroid/view/ViewStub;

.field private final g:I

.field private h:Larc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapView;)V
    .locals 5

    .prologue
    .line 41
    const v0, 0x7f0a0206

    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-static {p1}, Lawf;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lawf;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Laff;-><init>(Landroid/view/ViewStub;III)V

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewStub;III)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Laff;->f:Landroid/view/ViewStub;

    .line 49
    iput p2, p0, Laff;->a:I

    .line 50
    iput p3, p0, Laff;->b:I

    .line 51
    iput p4, p0, Laff;->g:I

    .line 52
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Laff;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Laff;->f:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laff;->d:Landroid/view/View;

    .line 60
    iget-object v0, p0, Laff;->d:Landroid/view/View;

    const v1, 0x7f0a01de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laff;->c:Landroid/view/View;

    .line 62
    iget-object v0, p0, Laff;->d:Landroid/view/View;

    const v1, 0x7f0a01dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laff;->e:Landroid/view/View;

    .line 63
    new-instance v0, Larc;

    iget v1, p0, Laff;->g:I

    invoke-direct {v0, v1}, Larc;-><init>(I)V

    iput-object v0, p0, Laff;->h:Larc;

    .line 64
    iget-object v0, p0, Laff;->e:Landroid/view/View;

    iget-object v1, p0, Laff;->h:Larc;

    invoke-static {v0, v1}, Lawf;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Laff;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Laff;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
