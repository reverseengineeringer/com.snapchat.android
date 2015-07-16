.class final Lahj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahj;
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

.field final synthetic e:Lahj;


# direct methods
.method private constructor <init>(Lahj;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lahj$a;->e:Lahj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lahj;B)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lahj$a;-><init>(Lahj;)V

    return-void
.end method
