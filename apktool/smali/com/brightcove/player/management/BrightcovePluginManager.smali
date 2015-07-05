.class public Lcom/brightcove/player/management/BrightcovePluginManager;
.super Lcom/brightcove/player/event/AbstractComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "version"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "registerPlugin"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/management/BrightcovePluginManager$OnRegisterPluginListener;
    }
.end annotation


# static fields
.field private static final CRASHLYTICS_LOG:Ljava/lang/String; = "log"

.field private static final TAG:Ljava/lang/String;

.field private static commitIdentifier:Ljava/lang/String;

.field private static releaseIdentifier:Ljava/lang/String;


# instance fields
.field private crashlyticsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private crashlyticsLogMethod:Ljava/lang/reflect/Method;

.field private isCrashlyticsAvailable:Z

.field onRegisterPluginListener:Lcom/brightcove/player/management/BrightcovePluginManager$OnRegisterPluginListener;

.field private pluginsInUse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/brightcove/player/management/BrightcovePluginManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/management/BrightcovePluginManager;->TAG:Ljava/lang/String;

    .line 50
    const-string v0, ""

    sput-object v0, Lcom/brightcove/player/management/BrightcovePluginManager;->commitIdentifier:Ljava/lang/String;

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/brightcove/player/management/BrightcovePluginManager;->releaseIdentifier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;)V
    .locals 2

    .prologue
    .line 67
    const-class v0, Lcom/brightcove/player/management/BrightcovePluginManager;

    invoke-direct {p0, p1, v0}, Lcom/brightcove/player/event/AbstractComponent;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V

    .line 69
    invoke-virtual {p0}, Lcom/brightcove/player/management/BrightcovePluginManager;->loadPropertiesInfo()V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrightcovePluginManager: git commit SHA: + "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/brightcove/player/management/BrightcovePluginManager;->commitIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", release: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/brightcove/player/management/BrightcovePluginManager;->releaseIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/management/BrightcovePluginManager;->pluginsInUse:Ljava/util/List;

    .line 72
    invoke-virtual {p0}, Lcom/brightcove/player/management/BrightcovePluginManager;->initializeListeners()V

    .line 73
    invoke-virtual {p0}, Lcom/brightcove/player/management/BrightcovePluginManager;->checkForCrashlytics()V

    .line 74
    invoke-virtual {p0}, Lcom/brightcove/player/management/BrightcovePluginManager;->generateCrashlyticsMethods()V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Git Commit SHA: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/brightcove/player/management/BrightcovePluginManager;->commitIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/management/BrightcovePluginManager;->crashlyticsLog(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Release Number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/brightcove/player/management/BrightcovePluginManager;->releaseIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/management/BrightcovePluginManager;->crashlyticsLog(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/brightcove/player/management/BrightcovePluginManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/brightcove/player/management/BrightcovePluginManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/brightcove/player/management/BrightcovePluginManager;->pluginsInUse:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected checkForCrashlytics()V
    .locals 1

    .prologue
    .line 115
    :try_start_0
    const-string v0, "com.crashlytics.android.Crashlytics"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/management/BrightcovePluginManager;->crashlyticsClass:Ljava/lang/Class;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brightcove/player/management/BrightcovePluginManager;->isCrashlyticsAvailable:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brightcove/player/management/BrightcovePluginManager;->isCrashlyticsAvailable:Z

    goto :goto_0
.end method

.method public crashlyticsLog(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/brightcove/player/management/BrightcovePluginManager;->isCrashlyticsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/management/BrightcovePluginManager;->crashlyticsLogMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/brightcove/player/management/BrightcovePluginManager;->crashlyticsLogMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 157
    :catch_1
    move-exception v0

    goto :goto_0

    .line 155
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected generateCrashlyticsMethods()V
    .locals 5

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/brightcove/player/management/BrightcovePluginManager;->isCrashlyticsAvailable:Z

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/brightcove/player/management/BrightcovePluginManager;->crashlyticsClass:Ljava/lang/Class;

    const-string v1, "log"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/management/BrightcovePluginManager;->crashlyticsLogMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCommitIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/brightcove/player/management/BrightcovePluginManager;->commitIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginsInUse()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/brightcove/player/management/BrightcovePluginManager;->pluginsInUse:Ljava/util/List;

    return-object v0
.end method

.method public getReleaseIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/brightcove/player/management/BrightcovePluginManager;->releaseIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method protected initializeListeners()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/brightcove/player/management/BrightcovePluginManager$OnRegisterPluginListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/management/BrightcovePluginManager$OnRegisterPluginListener;-><init>(Lcom/brightcove/player/management/BrightcovePluginManager;)V

    iput-object v0, p0, Lcom/brightcove/player/management/BrightcovePluginManager;->onRegisterPluginListener:Lcom/brightcove/player/management/BrightcovePluginManager$OnRegisterPluginListener;

    .line 110
    const-string v0, "registerPlugin"

    iget-object v1, p0, Lcom/brightcove/player/management/BrightcovePluginManager;->onRegisterPluginListener:Lcom/brightcove/player/management/BrightcovePluginManager$OnRegisterPluginListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/management/BrightcovePluginManager;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 111
    return-void
.end method

.method protected loadPropertiesInfo()V
    .locals 5

    .prologue
    .line 82
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 83
    const/4 v0, 0x0

    .line 85
    :try_start_0
    const-class v2, Lcom/brightcove/player/management/BrightcovePluginManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "build-version.properties"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 86
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 87
    const-string v2, "commitSHA"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/brightcove/player/management/BrightcovePluginManager;->commitIdentifier:Ljava/lang/String;

    .line 88
    const-string v2, "buildVersion"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/brightcove/player/management/BrightcovePluginManager;->releaseIdentifier:Ljava/lang/String;

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    const-string v2, "buildVersion"

    sget-object v3, Lcom/brightcove/player/management/BrightcovePluginManager;->releaseIdentifier:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Lcom/brightcove/player/management/BrightcovePluginManager;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    const-string v3, "version"

    invoke-interface {v2, v3, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    if-eqz v0, :cond_0

    .line 100
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 100
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    goto :goto_0

    .line 96
    :catch_2
    move-exception v1

    if-eqz v0, :cond_0

    .line 100
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 102
    :catch_3
    move-exception v0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_1

    .line 100
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 102
    :cond_1
    :goto_2
    throw v0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_2

    .line 98
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method
