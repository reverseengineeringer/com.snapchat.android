.class public final Lclf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcli;

.field public final b:Lclh;

.field public final c:Ljava/util/Locale;

.field public final d:Lchv;


# direct methods
.method public constructor <init>(Lcli;Lclh;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lclf;->a:Lcli;

    .line 89
    iput-object p2, p0, Lclf;->b:Lclh;

    .line 90
    iput-object v0, p0, Lclf;->c:Ljava/util/Locale;

    .line 91
    iput-object v0, p0, Lclf;->d:Lchv;

    .line 92
    return-void
.end method

.method public constructor <init>(Lcli;Lclh;Ljava/util/Locale;Lchv;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lclf;->a:Lcli;

    .line 107
    iput-object p2, p0, Lclf;->b:Lclh;

    .line 108
    iput-object p3, p0, Lclf;->c:Ljava/util/Locale;

    .line 109
    iput-object p4, p0, Lclf;->d:Lchv;

    .line 110
    return-void
.end method
