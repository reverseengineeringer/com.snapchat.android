.class public final Lanw$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanw;
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
        value = "new_password"
    .end annotation
.end field

.field final synthetic b:Lanw;


# direct methods
.method public constructor <init>(Lanw;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 46
    iput-object p1, p0, Lanw$a;->b:Lanw;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 47
    iput-object p2, p0, Lanw$a;->a:Ljava/lang/String;

    .line 48
    return-void
.end method
