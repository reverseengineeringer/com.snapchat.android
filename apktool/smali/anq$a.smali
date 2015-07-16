.class public final Lanq$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanq;
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

.field final synthetic b:Lanq;


# direct methods
.method public constructor <init>(Lanq;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 51
    iput-object p1, p0, Lanq$a;->b:Lanq;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 52
    iput-object p2, p0, Lanq$a;->a:Ljava/lang/String;

    .line 53
    return-void
.end method
