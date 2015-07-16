.class final Lfy$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/graphics/Matrix;

.field public n:Landroid/graphics/Shader;

.field public o:Z

.field public p:Landroid/graphics/Shader$TileMode;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfy$a;->k:Ljava/util/ArrayList;

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfy$a;->l:Ljava/util/ArrayList;

    .line 655
    iput-object v1, p0, Lfy$a;->m:Landroid/graphics/Matrix;

    .line 656
    iput-object v1, p0, Lfy$a;->n:Landroid/graphics/Shader;

    .line 657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfy$a;->o:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 647
    invoke-direct {p0}, Lfy$a;-><init>()V

    return-void
.end method
