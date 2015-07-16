.class public final Lbtp;
.super Lbtt;


# instance fields
.field private a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lbtt;-><init>()V

    .line 6
    iput-object p1, p0, Lbtp;->a:Ljava/lang/Runnable;

    .line 7
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lbtp;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 11
    return-void
.end method
