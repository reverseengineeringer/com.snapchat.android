.class public Lcom/addlive/platform/PlatformInitOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private applicationId:Ljava/lang/Long;

.field private consoleLoggingEnabled:Z

.field private interactionsLogTag:Ljava/lang/String;

.field private interactionsLoggingEnabled:Z

.field private libName:Ljava/lang/String;

.field private storageDir:Ljava/lang/String;

.field private streamerEndpointResolver:Ljava/lang/String;

.field private useExternalVideoInput:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/addlive/platform/PlatformInitOptions;->streamerEndpointResolver:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/addlive/platform/PlatformInitOptions;->applicationId:Ljava/lang/Long;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/platform/PlatformInitOptions;->interactionsLoggingEnabled:Z

    .line 59
    const-string v0, "AddLive_SDK"

    iput-object v0, p0, Lcom/addlive/platform/PlatformInitOptions;->interactionsLogTag:Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/platform/PlatformInitOptions;->consoleLoggingEnabled:Z

    .line 66
    iput-object v1, p0, Lcom/addlive/platform/PlatformInitOptions;->libName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/addlive/platform/PlatformInitOptions;->applicationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getInteractionsLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/addlive/platform/PlatformInitOptions;->interactionsLogTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLibName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/addlive/platform/PlatformInitOptions;->libName:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/addlive/platform/PlatformInitOptions;->storageDir:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamerEndpointResolver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/addlive/platform/PlatformInitOptions;->streamerEndpointResolver:Ljava/lang/String;

    return-object v0
.end method

.method public isConsoleLoggingEnabled()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/addlive/platform/PlatformInitOptions;->consoleLoggingEnabled:Z

    return v0
.end method

.method public isInteractionsLoggingEnabled()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/addlive/platform/PlatformInitOptions;->interactionsLoggingEnabled:Z

    return v0
.end method

.method public setApplicationId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/addlive/platform/PlatformInitOptions;->applicationId:Ljava/lang/Long;

    .line 140
    return-void
.end method

.method public setConsoleLoggingEnabled(Z)V
    .locals 0

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/addlive/platform/PlatformInitOptions;->consoleLoggingEnabled:Z

    .line 248
    return-void
.end method

.method public setInteractionsLogTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/addlive/platform/PlatformInitOptions;->interactionsLogTag:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setInteractionsLoggingEnabled(Z)V
    .locals 0

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/addlive/platform/PlatformInitOptions;->interactionsLoggingEnabled:Z

    .line 196
    return-void
.end method

.method public setLibName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/addlive/platform/PlatformInitOptions;->libName:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setStorageDir(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/addlive/platform/PlatformInitOptions;->storageDir:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setStreamerEndpointResolver(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/addlive/platform/PlatformInitOptions;->streamerEndpointResolver:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setUseExternalVideoInput(Z)V
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/addlive/platform/PlatformInitOptions;->useExternalVideoInput:Z

    .line 168
    return-void
.end method

.method public useExternalVideoInput()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/addlive/platform/PlatformInitOptions;->useExternalVideoInput:Z

    return v0
.end method
