.class public final Lanp$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanp;
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
        value = "email"
    .end annotation
.end field

.field final synthetic b:Lanp;


# direct methods
.method public constructor <init>(Lanp;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 59
    iput-object p1, p0, Lanp$a;->b:Lanp;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 60
    iput-object p2, p0, Lanp$a;->a:Ljava/lang/String;

    .line 61
    return-void
.end method
