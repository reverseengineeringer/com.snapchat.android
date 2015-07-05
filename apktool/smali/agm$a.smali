.class final Lagm$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/ProgressBar;

.field final synthetic e:Lagm;


# direct methods
.method private constructor <init>(Lagm;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lagm$a;->e:Lagm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lagm;B)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lagm$a;-><init>(Lagm;)V

    return-void
.end method
