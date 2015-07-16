.class final Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lclt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;


# direct methods
.method constructor <init>(Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator$2;->a:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator$2;->a:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;

    invoke-virtual {v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator$2;->a:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;

    invoke-virtual {v1}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method
