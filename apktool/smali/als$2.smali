.class final Lals$2;
.super Lalr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lals;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lawp;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Lals$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lals$a;

.field final synthetic b:Lals;


# direct methods
.method constructor <init>(Lals;Ljava/util/Map;Lawp;Lals$a;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lals$2;->b:Lals;

    iput-object p4, p0, Lals$2;->a:Lals$a;

    invoke-direct {p0, p2, p3}, Lalr;-><init>(Ljava/util/Map;Lawp;)V

    return-void
.end method


# virtual methods
.method public final a(Luc;Ljava/lang/Exception;I)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lals$2;->b:Lals;

    iget-object v1, p0, Lals$2;->a:Lals$a;

    invoke-static {v0, v1, p1, p2, p3}, Lals;->a(Lals;Lals$a;Luc;Ljava/lang/Exception;I)V

    .line 226
    return-void
.end method
