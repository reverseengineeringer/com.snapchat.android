.class public final Lanx$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field

.field final synthetic b:Lanx;


# direct methods
.method public constructor <init>(Lanx;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 49
    iput-object p1, p0, Lanx$a;->b:Lanx;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 50
    iput-object p2, p0, Lanx$a;->a:Ljava/lang/String;

    .line 51
    return-void
.end method
